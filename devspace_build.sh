#!/bin/bash
podman build . -t $1
podman push $1