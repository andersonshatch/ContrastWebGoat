#!/usr/bin/env bash

docker build --build-arg CONTRAST_AGENT_VERSION=3.7.10.17525 --iidfile .image_id .
