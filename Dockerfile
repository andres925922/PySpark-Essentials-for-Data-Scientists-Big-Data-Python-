FROM jupyter/pyspark-notebook:latest

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root