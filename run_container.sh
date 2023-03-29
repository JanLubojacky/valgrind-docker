#!/bin/bash

# building with buildx
# if the build is successful, run the container
if docker buildx build -t prg-valgrind .; then
    echo "Build successful"
    docker run -it --rm --name prg-valgrind-running prg-valgrind
else
    echo "Build failed"
    exit 1
fi
