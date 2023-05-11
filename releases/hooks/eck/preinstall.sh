#!/usr/bin/env bash
set -u

OPERATOR_REPO='elastic/eck-operator'
OPERATOR_VERSION='2.6.1'
OPERATOR_NS='elastic-system'

helm install elastic-operator $OPERATOR_REPO -n $OPERATOR_NS --create-namespace --version $OPERATOR_VERSION ||\
helm upgrade elastic-operator $OPERATOR_REPO -n $OPERATOR_NS --create-namespace --version $OPERATOR_VERSION