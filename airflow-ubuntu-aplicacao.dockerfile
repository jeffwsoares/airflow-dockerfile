FROM ubuntu:bionic
RUN apt-get update -y
RUN apt-get install python3.7 -y
RUN apt-get install python3-pip -y
ENV AIRFLOW_HOME /home/airflow
WORKDIR /home/airflow
RUN mkdir /home/airflow/dags
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install psycopg2-binary
COPY entrypoint.sh entrypoint.sh
COPY airflow.cfg airflow.cfg
ENTRYPOINT [ "sh" , "entrypoint.sh"]