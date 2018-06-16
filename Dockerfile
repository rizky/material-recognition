FROM bvlc/caffe:cpu

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

RUN pip install tensorflow
RUN pip install keras

ADD . /project

WORKDIR /project

EXPOSE 8888

CMD jupyter notebook --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.token='caffe'
