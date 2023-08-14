FROM pytorch/pytorch:1.13.1-cuda11.6-cudnn8-devel

RUN apt update
RUN apt install -y vim wget git silversearcher-ag libgl1-mesa-glx libglib2.0-0

# Set the working directory
WORKDIR /app

# Clone the repository
RUN git clone https://github.com/IDEA-Research/GroundingDINO.git

# Change the working directory to the cloned repo
WORKDIR /app/GroundingDINO

# Checkout the specific commit
RUN git checkout 57535c5a79791cb76e36fdb64975271354f10251

# Install the package
RUN pip install -e .

# Install SAM
RUN pip install 'git+https://github.com/facebookresearch/segment-anything.git'

# Install supervision and roboflow
RUN pip uninstall -y supervision
RUN pip install -q supervision==0.6.0
RUN pip install -q roboflow

RUN pip install ipykernel

# Fix error "NameError: name '_C' is not defined"
RUN pip install Cython

