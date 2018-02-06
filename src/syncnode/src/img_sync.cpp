#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "message_filters/subscriber.h"
#include "message_filters/synchronizer.h"
#include "message_filters/sync_policies/approximate_time.h"
#include "syncnode/syncimg.h"

using namespace message_filters;
using namespace sensor_msgs;



ros::NodeHandle nh;

	void callback(const ImageConstPtr &img1,const ImageConstPtr &img2)
	{
		//try to publish the images in different topic
		ros::Publisher publish_sync;
		publish_sync = nh.advertise<syncnode::syncimg>("/syncdata",1);
	
	}
int main(int argc, char **argv)
{
	ros::init(argc,argv,"Img_sync");
	
	typedef sync_policies::ApproximateTime<Image,Image> syncpolicy;
	sensor_msgs::Image image1,image2;
	message_filters::Subscriber<Image> Img1(nh,"/img1",3),Img2(nh,"/img2",3);
	Synchronizer<syncpolicy> sync(syncpolicy(10),Img1,Img2);
	sync.registerCallback(boost::bind(&callback,_1,_2));
	
	ros::spin();
	return 0;
}

