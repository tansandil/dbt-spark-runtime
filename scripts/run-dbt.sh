#!/bin/bash
set -e

echo "Getting Spark IP...."
SPARK_IP="spark.dn-dbt-spark.svc.cluster.local"
export SPARK_IP

echo "SPARK_IP=$SPARK_IP"

python3 -m venv /tmp/dbt-env
source /tmp/dbt-env/bin/activate
pip install --quiet dbt-core==1.7.19 dbt-spark==1.7.1 pyspark==3.5.0 protobuf==4.25.8

dbt debug --profiles-dir .
dbt run --profiles-dir .
