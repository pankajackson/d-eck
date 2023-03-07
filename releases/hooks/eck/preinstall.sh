#!/usr/bin/env bash
set -u

helm upgrade elastic-operator elastic/eck-operator -n elastic-system --create-namespace --version 2.6.1