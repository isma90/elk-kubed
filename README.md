# EKL Kubed

**Dependencies:**

> kube metrics kubernetes plugin

`kubectl apply -f 0_dependencies/kube-state-metrics`

**General configuration (namespace, storage)**

`Kubectl apply -f 1_general`

**Elastic search**

`kubectl apply -f 2_elastic`

**Kibana**

`kubectl apply -f 3_kibana`

**Beat general configurations**

`kubectl apply -f 4_beats`

**Beat workers**

`kubectl apply -f 5_beats`

**Logstash**

`In progress`

### Author

**Ismael Leiva**

* [github/isma90](https://github.com/isma90)
* [dockerhub/ismaleiva90](https://hub.docker.com/u/ismaleiva90)
* [stackoverflow/isma90](https://stackoverflow.com/users/2043313/isma90?tab=profile)

### License

Copyright © 2017, [Ismael Leiva](https://github.com/isma90).
Released under the [MIT License](LICENSE).

### Credits

Based on: 
- [Elastic.co](https://www.elastic.co/guide/en/logstash/7.0/index.html)
- [beats](https://github.com/elastic/beats/tree/master/deploy/kubernetes)
- [Elasticsearch-kubed](https://github.com/jswidler/elasticsearch-kubed)
- [Kubernetes-elk-cluster](https://github.com/pires/kubernetes-elk-cluster)
- [k8s-elk](https://github.com/neogenix/k8s-elk)
- [kube-state-metrics](https://github.com/kubernetes/kube-state-metrics)
- [jaeger-kubernetes](https://github.com/jaegertracing/jaeger-kubernetes#production-setup)
