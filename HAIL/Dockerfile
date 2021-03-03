# MAINTAINER s.mueller@ucl.ac.uk
# Pull base image
FROM python:3.6.9-slim-stretch

# set environmental variables
ENV BIN_HOME	/usr/local/bin
ENV PATH		$BIN_HOME:$PATH

RUN mkdir -p /usr/share/man/man1 && \
    apt-get update && apt-get install -y unzip wget vim less openjdk-8-jre-headless && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 --no-cache-dir install hail==0.2.62 jupyter jupyterlab 

# COPY in HAIL tutorial notebooks
RUN mkdir /home/tutorial
COPY test/data/tutorials/* /home/tutorial/
RUN chmod +rwx /home/tutorial/*

WORKDIR /home

CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--no-browser", "--allow-root"]