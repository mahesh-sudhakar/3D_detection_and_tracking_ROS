#include <iostream>
#include <Eigen/Dense>
#include <visualization_msgs/Marker.h>

using namespace Eigen; 
using namespace	std;

class KalmanFilter
{
	
	VectorXd curr_state;//[x y z x_dot y_dot w h]
	VectorXd prev_state;
	VectorXd y;
	MatrixXd curr_cov;
	MatrixXd prev_cov;
	VectorXd prior;
    MatrixXd prior_cov;
	MatrixXd A;//motion model
	MatrixXd C;//measurement model
	MatrixXd Q;//process noise
	MatrixXd R;//measurement noise
	int m,n;
	visualization_msgs::Marker marker;
	ros::NodeHandle nh;
    ros::Publisher state_pub;
    ros::Subscriber meas_sub;
	float dt;//time steps
	bool flag_meas;//Flag that keeps in check if a new measurement came in 
	void marker_cb(const visualization_msgs::MarkerConstPtr& marker_msg);

	public:
		void update_state();
		void corrector();
        void predictor();
        void marker_cb(const visualization_msgs::MarkerConstPtr& marker_msg);
        void get_measurement(visualization_msgs::Marker marker);
		KalmanFilter(int M, int N)// m & n are the dim of y and x vectors 
			{
             m = M;
             n = N;
             meas_sub = nh.subscribe ("/person_marker", 2000, &KalmanFilter::marker_cb, this);
    		 state_pub = nh.advertise<obj_recognition::SegmentedClustersArray> ("obj_recognition/pcl_clusters",1);
			 VectorXd temp_vec(n);
			 temp_vec << 0,0,0,0,0,0,0; //initial state kept randomly 
			 prev_state = temp_vec;
			 cout<<"Initial state:\n"<< prev_state << endl;

			 temp_vec << 20,20,20,20,20,20,20; //initial covariance of the prior. Keep this very large for the estimate to converge quickly
			 prev_cov = temp_vec.asDiagonal();
			 cout<<"Initial posterior covaraince\n"<<prev_cov<<endl;
             
             dt = 1;
             //Matrix Manipulations to set up matrices for motion and observation model
			 A = MatrixXd::Identity(7,7);
			 A(1,4) = dt;
			 A(2,5) = dt;
			 cout <<"Motion Model Matrix A: "<<endl<<A<<endl;
			 
			 C = MatrixXd::Zero(5,7);
			 C.block<3,3>(0,0) = MatrixXd::Identity(3,3);
			 C.block<2,2>(3,5) = MatrixXd::Identity(2,2);
             cout<<"Measurement Model Matrix C: "<<endl<<C<<endl;

             //Have to set Q and R matrices
			}


}; 