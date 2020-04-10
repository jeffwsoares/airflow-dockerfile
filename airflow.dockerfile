FROM ubuntu:latest
RUN apt-get update -y
RUN apt-get install -y apt-utils
RUN mkdir ~/airflow
ENV AIRFLOW_HOME=/root/airflow
RUN apt-get install python3 -y
RUN apt-get install python3-pip -y
RUN pip3 install apache-airflow
RUN apt-get install net-tools -y
COPY ./airflow-run.sh /root/airflow
RUN chmod 700 /root/airflow/airflow-run.sh
ENTRYPOINT [ "./root/airflow/airflow-run.sh"]