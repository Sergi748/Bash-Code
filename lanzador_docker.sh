#!/bin/bash

path="ruta"
path_docker=${path}/ruta_docker
# echo $path_docker

# Arguments
echo "Launch docker"
cd ${path_docker}
docker run --privileged --name="Flag" -v ${path_docker}/data/:/data -v ${path_docker}/config/:/config -v ${path_docker}/output/:/output -v ${path_docker}/logs/:/logs -v ${path_docker}/myVolume/:/mnt -e LICENSE="$(cat pmodulosenc.lic)" imagen
echo "END docker"
docker wait "Flag"
docker rm Flag

echo "END docker"

# Ejemplo: nohup sh lanzador_docker.sh &
