#!/usr/bin/env bash

docker build --build-arg CONTRAST_AGENT_VERSION=3.8.1.18696 --iidfile .image_id .
