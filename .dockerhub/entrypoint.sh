#!/usr/bin/env sh

: "${BUILD_DIR:?Need to set BUILD_DIR non-empty}"

cd $BUILD_DIR
gilt overlay

CMD=$1

case "$CMD" in
  "run" )
    exec ansible-playbook ${@:2}
    ;;

  * )
    # Run custom command
    exec $CMD ${@:2}
    ;;
esac
