#!/bin/bash
port=$1

image="notebooks_with_packages:latest"

 ## will need to make config dir for startup.jl.
docker run -it --rm --entrypoint /bin/bash \
       -p $port:$port \
       -v ~/projects/:/home/jovyan/projects \
       -m=6G \
       --name "maxwell" \
       -e GRANT_SUDO=yes \
       -e USERID=$UID \
       -e AWS_DEFAULT_REGION="us-east-2" \
       -e JUPYTER_ENABLE_LAB=yes \
       --user=root \
       $image start.sh jupyter lab --NotebookApp.token="" --NotebookApp.port=$port
