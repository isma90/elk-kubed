#!/usr/bin/env bash
cd ..
kubectl delete -f 6_logstash
kubectl delete -f 5_beats
kubectl delete -f 4_beats
kubectl delete -f 3_kibana
kubectl delete -f 2_elastic
kubectl delete -f 1_general
