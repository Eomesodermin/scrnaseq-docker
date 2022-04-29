FROM rocker/tidyverse:4.1.1

LABEL maintainer="Dillon Corvino"
LABEL version="1.1"
LABEL description="Image for scRNAseq analysis"

# This will make apt-get install without question
ENV DEBIAN_FRONTEND noninteractive
ENV PATH="/home/rstudio/miniconda3/bin:${PATH}"
ARG PATH="/home/rstudio/miniconda3/bin:${PATH}"

RUN apt-get update --yes && apt-get install --yes libglpk40 \ 
libhdf5-dev \
libx11-dev \
libxt-dev \
libgsl23 \
libxt6 \
libproj-dev \
    && rm -rf /var/lib/apt/lists/*

USER rstudio

COPY .Renviron . 

COPY install_bioconductor.R /tmp/
RUN R -f /tmp/install_bioconductor.R

COPY install_github.R /tmp/
RUN R -f /tmp/install_github.R

# install miniconda3
RUN mkdir /home/rstudio/miniconda3 && cd /home/rstudio/ \
    && wget \
    https://repo.anaconda.com/miniconda/Miniconda3-py39_4.10.3-Linux-x86_64.sh \
    && bash Miniconda3-py39_4.10.3-Linux-x86_64.sh -b -u -p /home/rstudio/miniconda3 \
    && rm -f Miniconda3-py39_4.10.3-Linux-x86_64.sh
RUN conda --version

# install snakemake
RUN conda install -c conda-forge mamba=0.15.3   
ADD environment.yaml /tmp/
RUN mamba env update -n base --file /tmp/environment.yaml

RUN conda init bash
USER root
USER rstudio
RUN conda clean --all

WORKDIR /home/rstudio/

USER root

RUN rm /.Renviron
