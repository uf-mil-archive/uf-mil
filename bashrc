<launch>

<node name="azi_waypoints" pkg="azi_drive" type="azi_waypoint.py" />
<include file="$(find azi_drive)/launch/joystick_azi.launch"/>
<node name="azi_drive" pkg="azi_drive" type="azi_drive_node.py" 
         output="screen" /> 
<node name="azi_drive_control_manager" pkg="azi_drive" type="control_manager.py" 
         output="screen" /> 
<nocde name="azi_drive_visualizer" pkg="azi_drive" type="visualize_azi_drive.py" 
         output="screen" /> 
<node name="controller" pkg="controller" type="pd_controller.py" /> 

</launch>