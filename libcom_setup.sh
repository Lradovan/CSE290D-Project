#!/bin/bash

# Create a workspace directory
mkdir -p /home/$USER/workspace
cd /home/$USER/workspace

# Clone the repository with minimal history
git clone --depth 1 https://github.com/bcmi/libcom.git
cd libcom/requirements

# Create conda environment from yaml
conda env create -f libcom.yaml

# Activate environment and install dependencies
source $(conda info --base)/etc/profile.d/conda.sh
conda activate Libcom

# Install pip dependencies
pip install -r runtime.txt

# Install taming-transformers from source
cd ../libcom/controllable_composition/source/ControlCom/src/taming-transformers
pip install .

# Install and register jupyter kernel
pip install ipykernel
python -m ipykernel install --user --name Libcom --display-name "LibCom Environment"

# Clean up cached files to save space
conda clean -a -y
pip cache purge

echo "Installation complete! You can now activate the environment with: conda activate Libcom"
