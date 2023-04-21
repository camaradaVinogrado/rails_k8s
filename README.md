Basic docker & k8s Rails setup.  
App functionlity: fetch from JSONplaceholder via /posts (no authentification, db etc, just fetch and return data).

**SETUP**

**Docker image**  
https://hub.docker.com/repository/docker/camaradavinogrado/rails-k8s/general


**Setup local k8s cluster**  

*Config*  
If using microk8s: put `microk8s config` output into /home/:username/.kube/config  

*Add pods*
```
kubectl apply -f ./config/kube/deployment.yml
kubectl apply -f ./config/kube/load_balancer.yml
``` 

*Ensure app is running on the cluster*  
request the cluster ip from load balance service (`kubectl get services` to check `CLUSTER-IP`)

