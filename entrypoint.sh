#!/bin/bash
airflow initdb

sleep 4

airflow webserver & airflow scheduler