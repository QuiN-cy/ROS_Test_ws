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

echo_and_run cd "/home/student/test_ws/src/Binpick/binpicking_behaviors/robotiq_flexbe_states"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/student/test_ws/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/student/test_ws/install/lib/python2.7/dist-packages:/home/student/test_ws/build/robotiq_flexbe_states/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/student/test_ws/build/robotiq_flexbe_states" \
    "/usr/bin/python2" \
    "/home/student/test_ws/src/Binpick/binpicking_behaviors/robotiq_flexbe_states/setup.py" \
    build --build-base "/home/student/test_ws/build/robotiq_flexbe_states" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/student/test_ws/install" --install-scripts="/home/student/test_ws/install/bin"
