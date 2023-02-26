FROM ubuntu:latest

#WORKDIR /docker-work-space

# set display port to avoid crash
#ENV DISPLAY=:99

#clone repo

RUN apt update
RUN apt install python3 -y
RUN python3 --version

RUN apt install git -y
RUN apt install wget

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt install ./google-chrome-stable_current_amd64.deb -y
RUN apt -f install -y


RUN git clone https://github.com/nnishad/YouTube-Viewer --depth 10
RUN cd YouTube-Viewer
RUN python -m pip install --upgrade pip wheel
RUN pip install "setuptools<59"
WORKDIR /YouTube-Viewer
RUN pip install -r requirements.txt