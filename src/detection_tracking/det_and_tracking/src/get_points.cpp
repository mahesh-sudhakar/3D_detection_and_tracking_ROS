#include "ros/ros.h"
#include "std_msgs/String.h"
#include "sensor_msgs/Image.h"
#include <string.h>
#include "darknet_ros_msgs/BoundingBoxes.h"
#include "darknet_ros_msgs/BoundingBox.h"
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/image_encodings.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <sstream>




sensor_msgs::Image mod_d_image;
  cv_bridge::CvImagePtr cv_ptr;
int xmin, ymin, xmax, ymax;
void YOLOCallback(const darknet_ros_msgs::BoundingBoxes::ConstPtr& bb)
{
  for (int i=0; i<bb->bounding_boxes.size(); ++i)
    {
      const darknet_ros_msgs::BoundingBox data = bb->bounding_boxes[i];
      if( data.Class == "person")
      { 

        xmin = data.xmin;
        ymin = data.ymin;
        xmax = data.xmax; 
        ymax = data.ymax;
      } 
    }
}

void depthregCallback(const sensor_msgs::Image::Ptr& d_image)
{

  cv_ptr = cv_bridge::toCvCopy(d_image);
  cv::Mat image = cv_ptr->image;
  for(int i=0;i<image.rows;i++) 
  {
   for (int j=0;j<image.cols;j++)
    { 
   

       if(!(j>=xmin && j<=xmax && i>=ymin && i<=ymax))//&&
        image.at<unsigned short>(i,j) = 0; //black  
       
   
    }
  }




}






int main(int argc, char **argv)
{
  

    ros::init(argc, argv, "boundingboxpoints");
ros::NodeHandle n;

ros::Publisher depth_modified_pub = n.advertise<sensor_msgs::Image>("/depth_modified_pub", 1000);

  ros::Subscriber yolo_sub = n.subscribe("/darknet_ros/bounding_boxes", 1000, YOLOCallback);
  ros::Subscriber depth_reg_sub = n.subscribe("/pepper_robot/camera/depth_registered/image_rect", 1000, depthregCallback);
  //ros::Subscriber rgb_sub = n.subscribe("/naoqi_driver/camera/front/image_raw", 1000, rgbCallback);
  
  
  ros::Rate loop_rate(10);

  while (ros::ok())
  {
if(cv_ptr){
//std::cout<<"Working buddy "<<std::endl;
depth_modified_pub.publish(cv_ptr->toImageMsg());
}
else
{
}
    ros::spinOnce();

    loop_rate.sleep();
    
  }


  return 0;
}
