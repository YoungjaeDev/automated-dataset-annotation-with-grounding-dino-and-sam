#!/usr/bin/bash

xhost +

docker run \
        -it \
        --rm \
        --gpus all \
        --net=host \
        --shm-size=8g \
        -e DISPLAY=${DISPLAY} \
        -v /tmp/argus_socket:/tmp/argus_socket \
        -v /tmp/.X11-unix/:/tmp/.X11-unix \
        -v $HOME/workspace/automated-dataset-annotation-with-grounding-dino-and-sam:/workspace/ \
        -w /workspace \
        --name sam-autolabel-container \
	sam-autolabel:latest
