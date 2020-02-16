#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ruthz/detection_ws/src/PCL-ROS-cluster-Segmentation"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ruthz/detection_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ruthz/detection_ws/install/lib/python2.7/dist-packages:/home/ruthz/detection_ws/build/obj_recognition/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ruthz/detection_ws/build/obj_recognition" \
    "/usr/bin/python2" \
    "/home/ruthz/detection_ws/src/PCL-ROS-cluster-Segmentation/setup.py" \
    build --build-base "/home/ruthz/detection_ws/build/obj_recognition" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/ruthz/detection_ws/install" --install-scripts="/home/ruthz/detection_ws/install/bin"
