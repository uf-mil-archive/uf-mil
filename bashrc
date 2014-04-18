function cm() {
  catkin_make -C ~/catkin_ws -j2 -DCMAKE_CXX_FLAGS_RELWITHDEBINFO="-O2 -g" -DCMAKE_BUILD_TYPE=RelWithDebInfo $@
}

alias wp="rosrun sub_launch send_waypoint"
alias k="rosrun kill_handling kill"
