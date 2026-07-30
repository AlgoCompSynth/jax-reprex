# jax-reprex

Demonstrate JAX GPU memory issue

## Setup

This was set up to run in an Ubuntu 26.04 container on a Bluefin 
Linux host system with an NVIDIA GeForce RTX 3090 GPU (24 GB of
VRAM). To run as is on another Linux host with an NVIDIA GPU,
you need the NVIDIA drivers, the NVIDIA Container Toolkit and
Podman.

If you want to run it on another system, please open an issue
and I'll help you figure out the setup. 

## Running

If you have a Linux system with an NVIDIA GPU and R already
installed, you should be able to just run

    ./R-script.R 2>&1 | tee jax-test.log

To run in a container, do

    ./1-run-test.sh

A logfile will be collected on `jax-test.log`.
