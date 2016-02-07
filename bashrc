UF_MIL_DIR=$(dirname ${BASH_SOURCE[0]})

function cm() {
  catkin_make -C $UF_MIL_DIR/../.. -j2 -DCMAKE_CXX_FLAGS_RELWITHDEBINFO="-O2 -g" -DCMAKE_BUILD_TYPE=RelWithDebInfo $@
}

alias wp="rosrun sub_launch send_waypoint"
alias clc_k="rosrun kill_handling clear"
alias sc="rosrun sub_scripting run_method"
alias k="rosrun kill_handling kill"
alias hold="rosrun boat_launch station_hold.py"

function core(){
roscore &
echo ""
echo "ROSCORE STARTED" 
echo ""
echo ""
echo "KILL HANDLER STARTED" 
echo ""
rosrun kill_handling kill_master 
}

function list_kills(){

rostopic echo /kill &
sleep 1
kill -SIGINT $!

}
