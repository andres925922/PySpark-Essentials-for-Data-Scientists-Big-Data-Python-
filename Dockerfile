# FROM jupyter/pyspark-notebook:latest
FROM udemy-pyspark-pyspark:latest

COPY ./requirements.txt /tmp/requirements.txt
RUN pip install -r /tmp/requirements.txt

CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root --NotebookApp.allow_origin='*' --NotebookApp.ip='0.0.0.0'