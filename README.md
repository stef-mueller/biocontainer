# biocontainer by Human Genetics at UCL 

## Objective

Providing docker images which are also compatible with singularity for bioinformatic software.

## Requisites

Container manager [singularity](https://singularity.lbl.gov/) or [docker](https://www.docker.com/).    
See [https://github.com/stef-mueller/singularity_intro](https://github.com/stef-mueller/singularity_intro) for a short introduction of singularity usage on HPC cluster.


## Repository Folder Structure
 One folder per software container with the following contents:

 * `README.md` file with detailed description of image
 * `Dockerfile`
 * folder `test` with a test analysis including a sample bash script and sample input data in `test/data/input` and result of test run in folder `test/data/output`


## Container Structure
* container build with base image ubuntu:18.04
* vim and less installed in all container
* software executables added to container `$PATH` variable and saved or linked in container path `/usr/local/bin`
* necessary downloads placed in folder `/opt`

## Available container

### plink2
Version: alpha build version 2.3 (Jan 2020)   
Dockerhub: [https://hub.docker.com/repository/docker/biocontainer/plink2](https://hub.docker.com/repository/docker/biocontainer/plink2)

### metaXcan
Version:   
Dockerhub:   

### jupyter lab, hub, notebook
Version: jupyter docker-stacks base-notebook, (March 2021)
* jupyter notebook: 6.2.0
* jupyter lab: 3.0.9
* jupyter hub: 1.3.0
* python: 3.8.8    
* conda: v4.9.2 (mambaforge)
  
Dockerhub: [https://hub.docker.com/repository/docker/biocontainer/jupyter](https://hub.docker.com/repository/docker/biocontainer/jupyter)
### HAIL
Version: v0.2   
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

