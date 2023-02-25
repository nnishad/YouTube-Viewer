FROM joyzoursky/python-chromedriver

#WORKDIR /docker-work-space

# set display port to avoid crash
#ENV DISPLAY=:99

#clone repo

RUN git clone https://github.com/nnishad/YouTube-Viewer --depth 10
RUN cd YouTube-Viewer
RUN python -m pip install --upgrade pip wheel
RUN pip install "setuptools<59"
WORKDIR /YouTube-Viewer
RUN pip install -r requirements.txt