
# Introduction


- This configuration file creates a pod with a single container based on the nginx:1.19 image. 
- The container listens on port 80.
- To deploy this pod to a Kubernetes cluster, you can use the kubectl command-line tool:


# How To

```
kubectl apply -f my-nginx-pod.yml
```
- This will create the pod in the cluster. To view the status of the pod, you can use the following command:

```
kubectl get pods
```
