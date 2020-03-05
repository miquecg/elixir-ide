#!/usr/bin/env bash

CMD="$1"

case "$CMD" in
  "run" )
    [ -d "$BUILD_DIR" ] && cd "$BUILD_DIR"
    exec ansible-playbook "${@:2}"
    ;;
  * )
    # Run custom command
    exec "$@"
    ;;
esac
