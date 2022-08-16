#!/bin/bash

sleep 10
airflow upgradedb

sleep 10
airflow users create \
--username admin \
--firstname Pablo \
--lastname Reshetnikov \
--role Admin \
--email vidalsassun@gmail.com \
-p admin

sleep 10
airflow scheduler -D & airflow webserver -p 8080 -D

