# EKL Kubed

**Dependencies:**

> kube metrics kubernetes plugin

`kubectl apply -f 0_dependencies/kube-state-metrics`

**General configuration (namespace, storage)**

`kubectl apply -f 1_general/namespace.yaml`
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

`kubectl apply -f 6_logstash`

**Fluentd**

`kubectl create -f 7_fluentd`


**You can run all these commands manually or use the bash script contained on utility folder.**

## Reduce or Increase elastic nodes

### Data nodes

In the example have 1 node of data declared in `elastic-data.yaml`, for increase only need add more replicas.

```yaml
spec:
  serviceName: elasticsearch-data
  replicas: 1
```
### Master Nodes

In the case of master `elastic-master.yaml` nodes you need update the replica param and the enviroment `cluster.initial_master_nodes` need add or remove the name of master nodes candidates.
```yaml
spec:
  serviceName: elasticsearch-master
  replicas: 2
  
...
          env:
            - name: discovery.seed_hosts
              value: "elasticsearch-master.elk.svc.cluster.local"
            - name: cluster.initial_master_nodes
              value: "elasticsearch-master-0,elasticsearch-master-1" # necessarily have to match the number of replicas
  
  
```


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
- [digitalocean](https://www.digitalocean.com/community/tutorials/how-to-set-up-an-elasticsearch-fluentd-and-kibana-efk-logging-stack-on-kubernetes#step-4-—-creating-the-fluentd-daemonset)
