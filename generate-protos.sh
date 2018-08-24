#!/usr/bin/env bash

set -ex
PROTOC_VERSION="$(protoc --version)"
if [ "$PROTOC_VERSION" != "libprotoc 3.6.0" ]; then
	echo "Must have libprotoc version 3.6.0."
	echo "We found: $PROTOC_VERSION"
	exit 1
fi
PROTOS="mlflow/protos"
protoc -I="$PROTOS" \
    --python_out="$PROTOS" \
    --java_out="mlflow/java/client/src/main/java" \
    "$PROTOS"/databricks.proto \
    "$PROTOS"/service.proto

OLD_DATABRICKS="import databricks_pb2 as databricks__pb2"
NEW_DATABRICKS="from . import databricks_pb2 as databricks__pb2"
sed -i'.old' -e "s/$OLD_DATABRICKS/$NEW_DATABRICKS/g" "$PROTOS/service_pb2.py"

rm "$PROTOS/service_pb2.py.old"
