# MAINTAINER s.mueller@ucl.ac.uk
# Pull base image
FROM ubuntu:18.04

# set environmental variables
ENV BIN_HOME	/usr/local/bin
ENV PATH		$BIN_HOME:$PATH

# install plink
# WARNING: no static download link available, links to older version routinely removed
RUN apt-get update && \
    apt-get install -y unzip wget vim less && \
	wget http://s3.amazonaws.com/plink2-assets/alpha2/plink2_linux_x86_64.zip && \
    unzip plink2_linux_x86_64.zip -d $BIN_HOME && \
    rm plink2_linux_x86_64.zip && \
    apt-get autoremove
