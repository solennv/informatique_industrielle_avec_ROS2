###########
# > ros2
###########

# simple aliases for ROS2 to boost productivity
#----------------------------------------------
alias ros2_dep='rosdep install --ignore-src --from-paths . -y -r'
alias ros2_build='ros2_dep && colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --symlink-install && source install/setup.bash'
alias ros2_build_debug='ros2_dep && colcon build --cmake-args -DCMAKE_BUILD_TYPE=Debug --symlink-install && source install/setup.bash'
alias ros2_build_reldebug='ros2_dep && colcon build --cmake-args -DCMAKE_BUILD_TYPE=RelWithDebInfo --symlink-install && source install/setup.bash'
alias ros2_test='source install/setup.bash & colcon test --ctest-args tests'
alias ros2_view_tests='colcon test-result'
alias ros2_view_tests_all='colcon test-result --all'

#stop colcon notifications that destroy dBus notification system
export COLCON_EXTENSION_BLOCKLIST=colcon_core.event_handler.desktop_notification


# aliases for ROS2 distributions
#-------------------------------
# aliases for humble
alias ros2_humble='source /opt/ros/humble/setup.bash'
alias ros2_humble_src='ros2_humble && source install/setup.bash'

# aliases for jazzy
alias ros2_jazzy='source /opt/ros/jazzy/setup.bash'
alias ros2_jazzy_src='ros2_jazzy && source install/setup.bash'

# Helper functions to build/test only some packages
#---------------------------------------------------
function ros2_build_only {
ros2_dep
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --symlink-install --packages-select $@
source install/setup.bash
}

function ros2_build_only_debug {
ros2_dep
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Debug --symlink-install --packages-select $@
source install/setup.bash
}

function ros2_test_only {
colcon test --ctest-args tests --packages-select  $@
}

function ros2_test_only_stop_when_fails {
colcon test --ctest-args "--debug --stop-on-failure --verbose tests" --packages-select  $@
}

function ros2_test_only_pkg_test() 
{
    local pkg=$1
    local test=$2
    colcon test --ctest-args "--debug --verbose --tests-regex $2 tests" --packages-select  $1
}

function ros2_test_only_stop_when_fails_pkg_test 
{
    local pkg=$1
    local test=$2
    colcon test --ctest-args "--debug --stop-on-failure --verbose --tests-regex $2 tests" --packages-select  $1
}

function ros2_view_result_of_test() 
{
    colcon test-result --verbose --test-result-base build/$@
}

function ros2_build_except {
old="$IFS"
IFS='|'
all_except_those="$*"
IFS=$old
#echo $all_except_those
reg=" ^((?!((^|, )("$all_except_those"))+$).)*"
#echo $reg
ros2_dep
colcon build --cmake-args -DCMAKE_BUILD_TYPE=Release --symlink-install --packages-select-regex $reg
source install/setup.bash
}

# < ros2 <
