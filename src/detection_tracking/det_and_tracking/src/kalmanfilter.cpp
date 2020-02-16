#include <iostream>
#include <Eigen/Dense>
#include <kalmanfilter.h>
#include <ros/ros.h>
using namespace Eigen; 
using namespace	std;
#include <visualization_msgs/Marker.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>

void KalmanFilter::get_measurement(visualization_msgs::Marker marker)
{
	

	//get measurement vector from rosmsg
	// see if you can make this a member function of the class, then you ccan directly set the 
}


void KalmanFilter::marker_cb(const visualization_msgs::MarkerConstPtr& marker_msg)
{
  cout<<"Got measurement"<<endl;
  //get x,y,z,w,h
  VectorXd temp_vec(m);
  temp_vec(0) = marker_msg->pose.position.x;
  temp_vec(1) = marker_msg->pose.position.y;
  temp_vec(2) = marker_msg->pose.position.z;
  temp_vec(3) =  marker_msg->scale.x;
  temp_vec(4) =  marker_msg->scale.y;
  temp_vec(5) =  marker_msg->scale.z;
  frame_id = marker_msg->header.frame_id;//marker_msg is wrt to topcameraoptical frame
  float meas_noise = pow(temp_vec(0)-prior(0), 2) + pow(temp_vec(1)-prior(1), 2) + pow(temp_vec(2)-prior(2), 2);
  meas_noise = 2*sqrt(meas_noise);
  /*if(flag_meas==1)
  R(0,0) = meas_noise;
  R(1,1) = meas_noise;
  R(2,2) = meas_noise;*/
  //cout<<frame_id<<endl;
  y = temp_vec;
  //flag_meas = 1;
  this->corrector();//Call corrector to fuse measurements
  //cout<<"measurement = "<<y<<endl;
  
}
void KalmanFilter::predictor()
{     
  if(flag_meas==1)
  {
   cout<<"Running predictor"<<endl;
   now = ros::Time::now();
   dt = now.toSec() - begin.toSec();//get time interval between prediction steps 
   //modify A to incorporate time intervals
   A(0,3) = dt;
   A(1,4) = dt;
   //A(2,5) = dt;

   prior = A*curr_state;
   //cout<<prior<<endl;
   prior_cov = A*curr_cov*A.transpose() + Q;
   //cout<<" prior= "<<prior<<endl;
 }

}

VectorXd KalmanFilter::get_state()
{
  return curr_state;
}

void KalmanFilter::publish(nav_msgs::Path path, geometry_msgs::PoseStamped pose, visualization_msgs::Marker marker, geometry_msgs::Twist velocity)
{

path_pub.publish(path);
pose_pub.publish(pose);
bbox_pub.publish(marker);
vel_pub.publish(velocity);
std::cout<<"Published"<<std::endl;
}



void KalmanFilter::corrector()
{
  cout<<"Running correction"<<endl;
  begin = ros::Time::now();//change begin time to start timing from when a new update is made
  
  //Compute Kalman gain
  MatrixXd kalman_gain, temp_mat;
  
  temp_mat = C*prior_cov*C.transpose() + R;

  temp_mat = temp_mat.inverse();
  kalman_gain = prior_cov*C.transpose()*temp_mat;
  
  //Correction step using the measurements
  temp_mat = MatrixXd::Identity(n,n);
  temp_mat = temp_mat - kalman_gain*C; 
  curr_cov = temp_mat*prior_cov;
  curr_state = prior + kalman_gain*(y - C*prior);
  flag_meas = 1;
}


 int main(int argc, char** argv)
{ 
  ros::init (argc, argv, "kalmanfilter");
  ros::NodeHandle nh;
  KalmanFilter state(6,8,nh);
  nav_msgs::Path path;
  geometry_msgs::PoseStamped pose;
  visualization_msgs::Marker person_marker;
  geometry_msgs::Twist velocity;
  ros::Rate loop_rate(15);
  int count = 0;
  //state.update_state();
  while(ros::ok())
  {
    ros::spinOnce();
    loop_rate.sleep();
    if(state.flag_meas==1)//if atleast one measurement came in
    {
      //std::cout<<"Publishing"<<std::endl;
      VectorXd updated_state;
      updated_state = state.get_state();
      if(abs(updated_state(0))>= 0.1 && abs(updated_state(1))>= 0.1 && abs(updated_state(2)) != 0 )
      {  
      pose.pose.position.x = updated_state(0);
      pose.pose.position.y = updated_state(1);  
      pose.pose.position.z = updated_state(2);
      pose.pose.orientation.w = 1;
      pose.header.seq = count;
      pose.header.frame_id = state.frame_id; 
      pose.header.stamp = ros::Time::now();

      path.poses.push_back(pose);//To get the path
      path.header = pose.header;

      velocity.linear.x = updated_state(3);
      velocity.linear.y = updated_state(4);
      person_marker.pose.position.x = updated_state(0);
      person_marker.pose.position.y = updated_state(1);
      person_marker.pose.position.z = updated_state(2);
      person_marker.pose.orientation.w = 1;
      person_marker.scale.x = updated_state(5);
      person_marker.scale.y = updated_state(6);
      person_marker.scale.z = updated_state(7);
      person_marker.header.frame_id = state.frame_id; 
      person_marker.header.stamp = ros::Time::now();
      person_marker.color.g = 1;
      person_marker.color.a = 0.3;
      person_marker.ns = "person";
      person_marker.id = count;
      person_marker.header.seq = count;
      person_marker.type = visualization_msgs::Marker::CUBE;
      state.publish(path,pose,person_marker,velocity);
      state.predictor();
      }

          
    
    
    
    



      //publish bounding boxes and poses
    }





  }
}




