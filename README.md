# biocontainer by Human Genetics at UCL 

## Objective

Providing docker images which are also compatible with singularity for bioinformatic software.

## Requisites

Container manager [singularity](https://singularity.lbl.gov/) or [docker](https://www.docker.com/).    
See [https://github.com/stef-mueller/singularity_intro](https://github.com/stef-mueller/singularity_intro) for a short introduction of singularity usage on HPC cluster.


## Repository Folder Structure
 One folder per software container with the following contents:

 * `README.md` file with detailed description of image
 * `DOCKERFILE`
 * folder `test` with a test analysis including a sample script and sample input data in `test/data/input` and result of test run in folder `test/data/output`


## Container Structure
* all container build with base image ubuntu:18.04
* vim and less installed in all container
* software executables added to container `$PATH` variable and saved in container path `/usr/local/bin`

## Available container

### plink2
Version: alpha build version 2.3 (Jan 2020)   
Dockerhub: [https://hub.docker.com/repository/docker/biocontainer/plink2](https://hub.docker.com/repository/docker/biocontainer/plink2)

### metaXcan
Version:   
Dockerhub:   

## Instructions for container creation and testing
1. create Dockerfile for container
2. build image locally and test whether program of interest executable
3. using sample data and sample script perform test analysis with singularity image
4. push image to dockerhub

## Usefule one liner
### build image
```
docker build -t biocontainer/<software>:<tag> .
```
### push image to dockerhub
```
docker login 
docker push biocontainer/<software>:<tag>
```
### pull image from dockerhub

#### creating docker image
```
docker pull biocontainer/<software>:<tag>
```
#### creating singularity image file
```
singularity pull docker://biocontainer/<software>:<tag>
```

### run script in container

#### singularity
```
singularity exec <path/to/.sif file> <path/to/script.sh> 
```

### create interactive container from image with docker
#### using docker
```
docker run --rm -it biocontainer/<software>:<tag>
```
#### using singularity
```
singularity shell <path/to/.sif file>
```

