#!/bin/bash

cd ..

kubectl apply -f 0_dependencies/kube-state-metrics
kubectl apply -f 0_dependencies/namespace.yaml
kubectl apply -f 1_general
kubectl apply -f 2_elastic
kubectl apply -f 3_kibana
kubectl apply -f 4_beats
kubectl apply -f 5_beats
kubectl apply -f 6_logstash
kubectl create -f 7_fluentd
