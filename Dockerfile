FROM jupyter/scipy-notebook:ubuntu-20.04

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends sox libportaudio2 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN pip install webrtcvad \
    librosa \
    torchvision \ 
    spectralcluster \
    umap-learn \
    sounddevice 
