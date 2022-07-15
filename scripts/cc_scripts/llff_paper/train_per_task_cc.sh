#!/bin/bash

TASK_ID=$1

if [ $TASK_ID == 0 ]
then
    SCENE_NAME="fern"
elif [ $TASK_ID == 1 ]
then
    SCENE_NAME="flower"
elif [ $TASK_ID == 2 ]
then
    SCENE_NAME="fortress"
elif [ $TASK_ID == 3 ]
then
    SCENE_NAME="horns"
elif [ $TASK_ID == 4 ]
then
    SCENE_NAME="leaves"
elif [ $TASK_ID == 5 ]
then
    SCENE_NAME="orchids"
elif [ $TASK_ID == 6 ]
then
    SCENE_NAME="room"
elif [ $TASK_ID == 7 ]
then
    SCENE_NAME="trex"
else
    echo "Error! Task ID not recognized"
    exit 1
fi

source scripts/train.sh paper llff $SCENE_NAME 20000 1000000 32768 65536
