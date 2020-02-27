#!/usr/bin/env bash

# these commands should be called after create-model command

MODEL_NAME=fashion-mnist-v1

ENDPOINT_CONFIG_NAME=fashion-mnist-config-v1

ENDPOINT_NAME=fashion-mnist-v1

PRODUCTION_VARIANTS="VariantName=Default,ModelName=${MODEL_NAME},"\
"InitialInstanceCount=1,InstanceType=ml.c4.large"

aws sagemaker create-endpoint-config --endpoint-config-name ${ENDPOINT_CONFIG_NAME} \
--production-variants ${PRODUCTION_VARIANTS}

aws sagemaker create-endpoint --endpoint-name ${ENDPOINT_NAME} \
--endpoint-config-name ${ENDPOINT_CONFIG_NAME}



