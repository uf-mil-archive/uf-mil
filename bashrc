function cm() {
  THIS_PATH="${BASH_SOURCE[0]}";
  THIS_DIR=$(dirname $THIS_PATH)
  catkin_make -C $THIS_DIR/../.. -j2 -DCMAKE_CXX_FLAGS_RELWITHDEBINFO="-O2 -g" -DCMAKE_BUILD_TYPE=RelWithDebInfo $@
}

alias wp="rosrun sub_launch send_waypoint"
alias k="rosrun kill_handling kill"
