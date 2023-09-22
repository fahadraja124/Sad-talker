FROM nvidia/cuda:11.3.1-cudnn8-devel-ubuntu20.04


ENV DEBIAN_FRONTEND noninteractive

#  RUN apt update && apt-get install -y tcl && apt-get install -y python3

RUN apt update && apt-get install -y tcl

WORKDIR /SadTalker

COPY . .

RUN apt-get install -y python3.8 \
     python3-pip

RUN pip install torch==1.12.1+cu113 torchvision==0.13.1+cu113 torchaudio==0.12.1  --extra-index-url https://download.pytorch.org/whl/cu113

RUN pip install -r requirements.txt && pip install TTS

# RUN apt-get update && apt-get install libsndfile1-de

RUN apt-get update


RUN apt install libgl1-mesa-glx -y && apt-get install libglib2.0-0 -y && apt-get install ffmpeg -y

EXPOSE 8000

CMD ["python3" ,"app_sadtalker.py"]