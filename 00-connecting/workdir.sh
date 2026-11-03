#!/bin/bash
# Build in the shared project space instead of the user's directory.
# Each user gets /projects/fpga-training/$USER/<exercise>/ with the same
# layout as the exercise directory (src/ and build/), so the scripts keep
# using ./build and ../src as before.
#
# Source it from an exercise directory:
#   . ../00-connecting/workdir.sh
#   enter_workdir     # copy ./src to the work directory and cd there
#   ...
#   leave_workdir     # copy build/ back to the exercise directory

WORK_ROOT=${WORK_ROOT:-/projects/fpga-training/$USER}
EXERCISE_DIR=$PWD
WORK_DIR=$WORK_ROOT/$(basename "$EXERCISE_DIR")

enter_workdir() {
    mkdir -p "$WORK_DIR" || exit 1
    # always start from the user's current sources
    rm -rf "$WORK_DIR/src"
    cp -a "$EXERCISE_DIR/src" "$WORK_DIR/src"
    # reuse results the user already has, e.g. when only running
    if [ ! -d "$WORK_DIR/build" ] && [ -d "$EXERCISE_DIR/build" ]; then
        cp -a "$EXERCISE_DIR/build" "$WORK_DIR/build"
    fi
    cd "$WORK_DIR"
    echo "working in $WORK_DIR"
}

leave_workdir() {
    cd "$WORK_DIR"
    if [ -d ./build ]; then
        mkdir -p "$EXERCISE_DIR/build"
        cp -a ./build/. "$EXERCISE_DIR/build/"
        echo "results copied to $EXERCISE_DIR/build"
    fi
    cd "$EXERCISE_DIR"
}
