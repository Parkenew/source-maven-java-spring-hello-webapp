#!/bin/env bash

kubectl create secret docker-registry regcred -n jenkins \
  --docker-username=parkernew \
  --docker-password=dckr_pat_bJi-PQ7LYgUoFM4e88VDqdWN4xk \
  --docker-server=https://index.docker.io/v1/
