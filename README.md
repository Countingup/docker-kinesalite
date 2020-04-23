# Kinesalite

[![Docker Automated build](https://img.shields.io/docker/build/countingup/kinesalite.svg)](https://hub.docker.com/r/countingup/kinesalite/builds/)

A docker image for [Kinesalite](https://github.com/mhart/kinesalite) which provides a Node.js based implementation of [AWS Kinesis Streams](https://aws.amazon.com/kinesis/streams/). This can then be used in development and testing.

Based on the latest Node.js 12 (LTS) Alpine library image from Docker Hub.

Supports passing all options to Kinesalite (also see the [README](https://github.com/mhart/kinesalite/blob/master/README.md)):

```
$ docker run -p 4567:4567 countingup/kinesalite --help

Usage: kinesalite [--port <port>] [--path <path>] [--ssl] [options]

A Kinesis http server, optionally backed by LevelDB

Options:
--help                 Display this help message and exit
--port <port>          The port to listen on (default: 4567)
--path <path>          The path to use for the LevelDB store (in-memory by default)
--ssl                  Enable SSL for the web server (default: false)
--createStreamMs <ms>  Amount of time streams stay in CREATING state (default: 500)
--deleteStreamMs <ms>  Amount of time streams stay in DELETING state (default: 500)
--updateStreamMs <ms>  Amount of time streams stay in UPDATING state (default: 500)
--shardLimit <limit>   Shard limit for error reporting (default: 10)

Report bugs at github.com/mhart/kinesalite/issues
```

## Build locally

```
$ cd docker-kinesalite
$ docker build -t countingup/kinesalite .
```

## Run (will pull from dockerhub)

```
# Default
$ docker run -d -p 4567:4567 countingup/kinesalite

# With additional options
$ docker run -d -p 4567:4567 countingup/kinesalite --shardLimit 5

# With persistent data
$ docker run -d -p 4567:4567 -v /some/host/path:/some/container/path countingup/kinesalite --path /some/container/path
```
