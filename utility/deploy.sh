#!/usr/bin/env bash

cd ..

kubectl apply -f 0_dependencies/kube-state-metrics
kubectl apply -f 1_general/namespace.yaml
kubectl apply -f 1_general
kubectl apply -f 2_elastic
sleep 230s # why? because elastic need a while to run and you need running elastic to connect, without errors, kibana, beats and logstash
kubectl apply -f 3_kibana
sleep 30s
kubectl apply -f 4_beats
sleep 10s
kubectl apply -f 5_beats
sleep 10s
kubectl apply -f 6_logstash
