# Introduction

- In this example, the pod is named "my-pod" and it contains two containers. 
- The first container is based on the "nginx" image and it exposes port 80. 
- The second container is based on the "redis" image and it exposes port 6379.

- You can use 'kubectl' command to create this pod, by using the 'create' command and providing the pod definition file.

# How to Run

```
kubectl create -f multi-conatiner.yaml
```

- Please keep in mind that you need a Kubernetes cluster set up in order to create and manage pods.

- It is important to note that the containers within a pod share the same network namespace, meaning they can all communicate with one another using localhost, as well as share the same storage volumes.




