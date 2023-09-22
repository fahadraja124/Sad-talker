#! /bin/bash

echo "bash file for sadtalker"
#installing python

# apt install python3.8-venv -y
# sudo apt install python3.8-venv

python3.8 -m venv sadtalker

source sadtalker/bin/activate

# DEBIAN_FRONTEND noninteractive

# apt update && apt-get install -y tcl && apt-get install -y python3
# apt-get install -y python3.8 
# apt-get install python3-pip

pip install --upgrade pip

pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1+cu113 --extra-index-url https://download.pytorch.org/whl/cu113

pip install -r requirements.txt 
pip install TTS
apt-get update 
apt install libgl1-mesa-glx -y 

apt-get install ffmpeg

apt-get update && apt-get install libsm6 libxext6  -y

python3 app_sadtalker.py