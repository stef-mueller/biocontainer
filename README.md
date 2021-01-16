# Objective

Providing docker images which are also compatible with singularity for bioinformatics software.

## Requisites

Container manager [singularity](https://singularity.lbl.gov/) or [docker](https://www.docker.com/).    
See [https://github.com/stef-mueller/singularity_intro](https://github.com/stef-mueller/singularity_intro) for a short introduction of singularity usage on HPC cluster.


## Repository Folder Structure
 One folder per software container with the following contents:

 * `README.md` file with detailed description of image
 * `DOCKERFILE`
 * folder `sample_data` with some examplary data
 * folder `sample_code` with a sample script for container test


## Container Structure
* all container build with base image ubuntu:18.04
* vim and less installed in all container
* software executables added to container `$PATH` variable and saved in container path `/usr/local/bin`

## Available container

### plink2
Version:   
Dockerhub:   

### metaXcan
Version:   
Dockerhub:   