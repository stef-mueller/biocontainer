# Jupyter Notebook, Lab and Hub

## Reference 

### URL
[https://github.com/jupyter/docker-stacks](https://github.com/jupyter/docker-stacks)
[https://jupyter-docker-stacks.readthedocs.io/en/latest/using/running.html](https://jupyter-docker-stacks.readthedocs.io/en/latest/using/running.html)

### Publication
NA

## Software Version
jupyter docker-stacks base-notebook, (March 2021)
* jupyter notebook: 6.2.0
* jupyter lab: 3.0.9
* jupyter hub: 1.3.0

## Dockerhub link
[https://hub.docker.com/repository/docker/biocontainer/jupyter](https://hub.docker.com/repository/docker/biocontainer/jupyter)
## Base image
Ubuntu 20.04 (focal)

## additional software
* shell stuff:
  - vim, less, wget, unzip
* conda: v4.9.2
* miniforge:
  - Mambaforge
* python: v3.8.8:
  - pip3, tini=0.18.0

## usage
### Run jupyter lab on port 8888
```
docker run -e JUPYTER_ENABLE_LAB=yes -p 8888:8888 biocontainer/jupyter:base 
```

In terminal follow docker output and given URL to automatically login with token.