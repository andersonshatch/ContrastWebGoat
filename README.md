# Contrast + WebGoat + Docker / Docker Compose

This repo details a few different approaches you can use to add Contrast's Java agent to a Docker container, using WebGoat as a demo application.

A specific version of the Contrast Java agent is retrieved from Maven Central at build time, where the version is specified as a build argument in `docker-build.sh` and `docker-compose.yml`.
You should update the version in these files to match the version available in your Contrast environment. Use of `LATEST` is possible, though not recommended especially for on-premise Contrast users.

The `JAVA_TOOL_OPTIONS` variable is used in order to add the `-javaagent:contrast.jar` file to the JVM startup options, conditionally.

## Setup
1. Copy `contrast.env.tmpl` to `contrast.env` and then open it in your text editor.
1. Fill in the connection details in `contrast.env`

## Running with Docker locally
1. Run `./docker-build.sh` to build the container
1. Run `./docker-run.sh` to run the built container
1. Answer y/n to the `Run with Contrast? [Y/N]` prompt

When you answer yes, docker is invoked with the `contrast.env` file, so Contrast will be loaded.

When you answer no, this environment file is not used and the application runs without Contrast.

## Running with Docker Compose
1. Run `./docker-compose-run.sh`
1. Answer y/n to the `Run with Contrast? [Y/N]` prompt

When you answer yes, docker-compose is invoked with the `contrast.env` file, so Contrast will be loaded.

When you answer no, this environment file is not used and the application runs without Contrast.

## Using WebGoat
1. Visit [http://localhost:8888/WebGoat](http://localhost:8888/WebGoat)
