# HAIL

## Reference 
[https://github.com/danking/docker-hail](https://github.com/danking/docker-hail)

### URL
[https://hail.is/docs/0.2/#](https://hail.is/docs/0.2/#)

### Publication
tba

## Software Version
v0.26.2

## Dockerhub link
[https://hub.docker.com/repository/docker/biocontainer/hail](https://hub.docker.com/repository/docker/biocontainer/hail)

## Base image
python:3.6.9-slim-stretch

## additional software
* shell stuff:
  - vim, less, wget, unzip
* python3.6.9:
  - pip3, jupyter, jupyterlab 
* HAIL requirements:
  - Java 8, BLAS, LAPACK, recent version of the C and C++ standard libraries 

## origin of sample data
(https://hail.is/docs/0.2/tutorials-landing.html)[https://hail.is/docs/0.2/tutorials-landing.html]

## usage
### starting up with jupyter lab
```
docker run -it -p 8888:8888 biocontainer/hail:v0.2 
```
follow link in terminal to open in browser logged in via token

### starting up with jupyter notebook
```
docker run -it -p 8888:8888 biocontainer/hail:v0.2 jupyter notebook --allow-root --ip 0.0.0.0 --no-browser
```
follow link in terminal to open in browser logged in via token

### HAIL GWAS tutorial
[https://hail.is/docs/0.2/tutorials/01-genome-wide-association-study.html](https://hail.is/docs/0.2/tutorials/01-genome-wide-association-study.html)