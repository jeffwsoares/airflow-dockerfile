#!/bin/bash
echo "inicia o BD"
airflow initdb
echo "inicia o webserver e scheduler"
airflow webserver -p 8080 & airflow scheduler