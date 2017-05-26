// Copyright (c) 2015-2016, The University of Texas at Austin
// All rights reserved.
// 
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
// 
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
// 
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
// 
//     * Neither the name of the copyright holder nor the names of its
//       contributors may be used to endorse or promote products derived from
//       this software without specific prior written permission.
// 
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

/** @file keyboard_reader.cpp
 * 
 *  @author karl.kruusamae(at)utexas.edu
 * 
 *  NOTE: If you get permission denied when starting this node. Use ' ls -l /dev/input/event* ' to learn which group can access the events.
 *        Then add your username to this group with ' sudo usermod -a -G group_name user_name '
 */

#include <ros/ros.h>
#include <iostream>
#include <geometry_msgs/Twist.h>

#include "keyboard_reader/keyboard_reader.h"
#include "keyboard_reader/Key.h"

#include "mouse_reader/mouse_reader.h"
#include "mouse_reader/Key.h"


/** Goes through all the event files in /dev/input/ to locate keyboard.
 *  @return file descriptor if all checks out; -1 otherwise.
 */

ros::Publisher pub_move_base;
geometry_msgs::Twist command_move_base;
ros::Subscriber sub_kb_event;
ros::Subscriber sub_ms_event;


bool MOVE = false;
int speed_x = 1;

void keyboardCallback(const mouse_reader::Key& msg)
{
  if (msg.key_pressed == 0)
  {
    MOVE = !MOVE;
    if (MOVE)
    {
      command_move_base.linear.x = speed_x;
    }
    else
    {
      command_move_base.linear.x = 0;
    }
    pub_move_base.publish(command_move_base);
  }
}

void mouseCallback(const keyboard_reader::Key& msg)
{
  if (msg.key_name == "btn_left" && msg.key_pressed ==0)
  {
    MOVE = !MOVE;
    if (MOVE)
    {
      command_move_base.linear.x = speed_x;
    }
    else
    {
      command_move_base.linear.x = 0;
    }
    pub_move_base.publish(command_move_base);
  }
}


int main(int argc, char** argv)
{
  //////////////////////////////////////////////////////
  // initialize ros
  //////////////////////////////////////////////////////
  ros::init(argc, argv, "husky_tele_switch");
  // ros::AsyncSpinner spin(2);
  // spin.start();
  ros::NodeHandle nh;

  
  // std::cout << "init >>> " << std::endl
  pub_move_base = nh.advertise<geometry_msgs::Twist>("/cmd_vel", 1000);
  command_move_base.linear.x = 0;
  command_move_base.linear.y = 0;
  command_move_base.linear.z = 0;
  command_move_base.angular.x = 0;
  command_move_base.angular.y = 0;
  command_move_base.angular.z = 0;

  sub_kb_event = nh.subscribe("/keyboard", 100, keyboardCallback);
  sub_ms_event = nh.subscribe("/mouse", 100, mouseCallback);

  ros::Rate loop_rate(10);
  while (ros::ok())
  {
    pub_move_base.publish(command_move_base);
    ros::spinOnce();
    loop_rate.sleep();
  }
  // ros::spin();

  return 0;
}