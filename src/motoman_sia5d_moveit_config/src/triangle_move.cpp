#include <ros/ros.h>
#include <moveit/move_group_interface/move_group.h>
#include <geometry_msgs/Pose.h>
#include <iostream>
int main(int argc, char **argv)
{
	
  ros::init(argc, argv, "triangle_move");
  // start a ROS spinning thread
  ros::AsyncSpinner spinner(1);
  spinner.start();
  ros::NodeHandle nh;
  // this connecs to a running instance of the move_group node
  move_group_interface::MoveGroup group("sia5");
  // specify that our target will be a random one
//  group.setRandomTarget();
geometry_msgs::Pose target_pose1 = group.getCurrentPose().pose;
target_pose1.position.x -= 0.2;
group.move();
std::cout << "inint y" << std::endl;
float dis = 0.1;
while (ros::ok())
{
	target_pose1.position.z += dis;
	group.setPoseTarget(target_pose1);
	group.move();
	std::cout << "x + 0.1" << std::endl;
	

	target_pose1.position.z -= dis;
	target_pose1.position.y += dis;
	group.setPoseTarget(target_pose1);
	group.move();
	std::cout << "x - 0.1, z + 0.1" << std::endl;

	target_pose1.position.y -= dis;
	group.setPoseTarget(target_pose1);
	group.move();
	std::cout << "z - 0.1" << std::endl;
}

}
