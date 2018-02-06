#include "ros/ros.h"
#include "sensor_msgs/Image.h"
#include "message_filters/subscriber.h"
#include "message_filters/synchronizer.h"
#include "message_filters/sync_policies/approximate_time.h"


class Img_Sync{

	public:
	Img_Sync(const char *Img1_topic, const char *Img2_topic)
	{
		Img1 = new message_filters::Subscriber(nh,Img1_topic,3);
		Img2 = new message_filters::Subscriber(nh,Img2_topic,3);
		sync = new Synchronizer(syncpolicy(10),Img1,Img2);
		sync.registerCallback(boost::bind(&callback,this,__1,__2));
		publisher = nh.advertise<sensor_msgs::Image>("/syncdata",1);
		
	}
	
	void callback(const ImageConstPtr &img1,const ImageConstPtr &img2)
	{
		//try to publish the images in different topic
		
	}
	private:

	ros::NodeHandle nh;
	ros::Publisher publisher1,publisher2;
	ros::Subscriber subscriber;
	typedef sync_policies::ApproximateTime<Image,Image> syncpolicy;
	sensor_msgs::Image image1,image2;
	message_filters::Subscriber<Image> Img1,Img2;
	Synchronizer<syncpolicy> sync;


};

int main(int argc, char **argv)
{
	ros::init(argc,argv,"Img_sync");
	
	Img_Sync syncnode("/camera1/Image1","/camera2/Image2");  //topics to listen to
	
	ros::spin();
	return 0;
}

