# enable access to xhost from the container
xhost +

# Run docker and open bash shell
docker run -it --privileged \
--env=LOCAL_USER_ID="$(id -u)" \
--env "DISPLAY" \
-v $(pwd)/../PX4-Autopilot/:/home/user/PX4-Autopilot/:rw \
-v $(pwd)/../Sensitivity_PX4_Experiments/:/home/user/Sensitivity_PX4_Experiments/:rw \
-v /tmp/.X11-unix:/tmp/.X11-unix:ro \
--network host \
--workdir="/home/user/" \
--name=px4_ros2 px4io/px4-dev-ros2-foxy:latest bash


