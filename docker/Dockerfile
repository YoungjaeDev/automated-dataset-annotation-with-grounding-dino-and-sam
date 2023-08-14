FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-devel

# Set CUDA_HOME environment variable
ENV CUDA_HOME /usr/local/cuda

# Update LD_LIBRARY_PATH and PATH for CUDA
ENV LD_LIBRARY_PATH $CUDA_HOME/lib64:$LD_LIBRARY_PATH
ENV PATH $CUDA_HOME/bin:$PATH

RUN apt update
RUN apt install -y vim wget git silversearcher-ag libgl1-mesa-glx libglib2.0-0

RUN pip install ipykernel

# Fix error "NameError: name '_C' is not defined"
RUN pip install Cython

RUN pip install juypter ipywidgets

