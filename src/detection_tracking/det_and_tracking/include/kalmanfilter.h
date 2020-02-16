#include <iostream>
#include <Eigen/Dense>
#include <visualization_msgs/Marker.h>
#include <nav_msgs/Path.h>
#include <geometry_msgs/PoseStamped.h>
#include <geometry_msgs/Twist.h>
#include <ros/ros.h>
using namespace Eigen; 
using namespace	std;

class KalmanFilter
{
	
	VectorXd curr_state;//[x y z x_dot y_dot w h]
	VectorXd y;
	MatrixXd curr_cov;
	VectorXd prior;
    MatrixXd prior_cov;
	MatrixXd A;//motion model
	MatrixXd C;//measurement model
	MatrixXd Q;//process noise
	MatrixXd R;//measurement noise
	int m,n;
	visualization_msgs::Marker marker;
	ros::NodeHandle nh;
    ros::Publisher path_pub;	
    ros::Publisher pose_pub;
    ros::Publisher bbox_pub;
    ros::Publisher vel_pub;
    ros::Subscriber meas_sub;
    ros::Time begin, now;
	double dt;//time steps
	

	public:
		string frame_id;
		bool flag_meas;//Flag that keeps in check if a new measurement came in 
		void corrector();
        void predictor();
        VectorXd get_state();
        void marker_cb(const visualization_msgs::MarkerConstPtr& marker_msg);
        void get_measurement(visualization_msgs::Marker marker);
        void publish(nav_msgs::Path path, geometry_msgs::PoseStamped pose, visualization_msgs::Marker marker, geometry_msgs::Twist velocity);
		KalmanFilter(int M, int N,ros::NodeHandle m_nh)// m & n are the dim of y and x vectors 
			{
			 flag_meas = 0;
			 nh = m_nh;
			 begin = ros::Time::now();
             m = M;
             n = N;
             meas_sub = nh.subscribe ("/single_cluster_marker", 1000, &KalmanFilter::marker_cb, this);
    		 path_pub = nh.advertise<nav_msgs::Path> ("/person_path",1,true);
    		 pose_pub = nh.advertise<geometry_msgs::PoseStamped> ("/person_pose",1,true);
    		 bbox_pub = nh.advertise<visualization_msgs::Marker> ("/person_bounding_box3d",1,true);
    		 vel_pub = nh.advertise<geometry_msgs::Twist> ("/person_velocity",1,true);


			 VectorXd temp_vec(n);
			 temp_vec << 0,0,0,0,0,2,2,2; //initial state kept randomly 
			 prior = temp_vec;
			 cout<<"Initial state:\n"<< prior << endl;
			 temp_vec << 10000000,10000000,10000000,10000000,1000000,10000000,1000000,1000000; //initial covariance of the prior. Keep this very large for the estimate to converge quickly
			 prior_cov = temp_vec.asDiagonal();
			 cout<<"Initial posterior covaraince\n"<<prior_cov<<endl;
             dt = 1;

             //Matrix Manipulations to set up matrices for motion and observation model
			 A = MatrixXd::Identity(n,n);
			 A(0,3) = dt;
			 A(1,4) = dt;
			 //A(2,5) = dt;
			 cout <<"Motion Model Matrix A: "<<endl<<A<<endl;
			 
			 C = MatrixXd::Zero(m,n);
			 C.block<3,3>(0,0) = MatrixXd::Identity(3,3);
			 C.block<3,3>(3,5) = MatrixXd::Identity(3,3);
             cout<<"Measurement Model Matrix C: "<<endl<<C<<endl;
             float q, r,v; 
             m_nh.getParam("prediction_noise",q);
  			 m_nh.getParam("observation_noise",r);
  			 m_nh.getParam("velocity_noise",v);
             //Have to set Q and R matrices
             Q = q*MatrixXd::Identity(n,n);//Prediction noise covariance
             Q(3,3) = v;
             Q(4,4) = v;
             Q(n-3,n-3) = 0.1;
             Q(n-2,n-2) = 0.1;
             Q(n-1,n-1) = 0.1;

             cout<<"Prediction noise covariance Matrix Q: "<<endl<<Q<<endl;
             R = r*MatrixXd::Identity(m,m);//observation noise covariance
             cout<<" observation noise covariance matrix R: "<<endl<<R<<endl;

			}


}; 