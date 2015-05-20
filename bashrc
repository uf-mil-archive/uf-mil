function cm() {
  THIS_PATH="${BASH_SOURCE[0]}";
  THIS_DIR=$(dirname $THIS_PATH)
  catkin_make -C $THIS_DIR/../.. -j2 -DCMAKE_CXX_FLAGS_RELWITHDEBINFO="-O2 -g" -DCMAKE_BUILD_TYPE=RelWithDebInfo $@
}

alias wp="rosrun sub_launch send_waypoint"
alias clc_k="rosrun kill_handling clear"
alias sc="rosrun sub_scripting run_method"

function k() {
rosrun kill_handling kill &
sleep 2
kill -SIGINT $!

}


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

function listkills(){

rostopic echo /kill &
sleep 1
kill -SIGINT $!

}
