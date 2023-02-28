![TechSlate](../../global/images/ts.png)

# **How to run multiple k8s pods ?**
# Table of contents
1.[Introduction](#introduction)

2.[Prerequisites](#pre-requisites)

3.[How to run multiple k8s pods ?]()

## **Introduction**

### **What is Pod?** 

- Pods are the smallest deployable units of computing that you can create and manage in Kubernetes.

- A Pod (as in a pod of whales or pea pod) is a group of one or more containers, with shared storage and network resources, and a specification for how to run the containers. A Pod's contents are always co-located and co-scheduled, and run in a shared context. A Pod models an application-specific "logical host": it contains one or more application containers which are relatively tightly coupled. In non-cloud contexts, applications executed on the same physical or virtual machine are analogous to cloud applications executed on the same logical host.

- As well as application containers, a Pod can contain init containers that run during Pod startup. You can also inject ephemeral containers for debugging if your cluster offers this.

### **Pods in a Kubernetes cluster are used in two main ways:**

- Pods that run a single container. The "one-container-per-Pod" model is the most common Kubernetes use case; in this case, you can think of a Pod as a wrapper around a single container; Kubernetes manages Pods rather than managing the containers directly.

- Pods that run multiple containers that need to work together. A Pod can encapsulate an application composed of multiple co-located containers that are tightly coupled and need to share resources. These co-located containers form a single cohesive unit of service—for example, one container serving data stored in a shared volume to the public, while a separate sidecar container refreshes or updates those files. The Pod wraps these containers, storage resources, and an ephemeral network identity together as a single unit.

### **How Pods manage multiple containers**

Pods are designed to support multiple cooperating processes (as containers) that form a cohesive unit of service. The containers in a Pod are automatically co-located and co-scheduled on the same physical or virtual machine in the cluster. The containers can share resources and dependencies, communicate with one another, and coordinate when and how they are terminated.


***

## **Pre-requisites**

**To run nginx pod, you will need to have the following prerequisites installed and configured on your machine:**

**AKS Cluster (Azure kubernetes service):** 

- AKS is an open-source fully managed container orchestration service that became available in June 2018 and is available on the Microsoft Azure public cloud that can be used to deploy, scale and manage Docker containers and container-based applications in a cluster environment.

- Azure Kubernetes Service offers provisioning, scaling, and upgrades of resources as per requirement or demand without any downtime in the Kubernetes cluster and the best thing about AKS is that you don’t require deep knowledge and expertise in container orchestration to manage AKS.

**YAML file**

- A YAML file is a text document that contains data formatted using YAML (YAML Ain't Markup Language), a human-readable data format used for data serialization. It is used for reading and writing data independent of a specific programming language.

**A text editor:**

- You will need a text editor to create and edit the docker-compose.yml file that defines the configuration for your SonarQube and Postgres containers. Some popular text editors include Visual Studio Code, Sublime Text, and Atom.


***

# **How to run multiple k8s pods ?**

- ## Lets understand with two examples i.e. ` init-conatainer`  and ` multi-container` .

- ## First create a folder with appropriate title .

![Visual studio page](images/folder.png)

- ## Under `002-multi-container-pods` we shall create two yaml files i.e. `init-container.yaml` and `multi-container.yaml`  .

![Visual studio page](images/yaml.png)


- ## Open the terminal and Run the following command

```
kubectl apply -f nginx.yaml
```
![Visual studio page](images/apply.png)

- ## Now , lets run kubectl get pods to see if our pods are running.And also you can see the running logs

```
kubectl get pods
```
```
 kubectl logs -f my-pod
```
![Visual studio page](images/getpods.png)

- ## If we want to delete the pod we can delete it by running the following command

```
kubectl delete pod my-pod
```
![Visual studio page](images/delete.png)

- ## As we runned ```init-container.yaml``` , lets also run ```multi-container.yaml``` and see pods running.

```
kubectl apply -f nginx.yaml
```
![Visual studio page](images/multi.png)

- ## Now , lets run kubectl get pods to see if our multi-container pods are running.And also you can see the running logs

```
kubectl get pods
```
```
 kubectl logs -f multi-container-pod
```
![Visual studio page](images/multipods.png)


- ## Now, let's get back to Azure portal and AKS Cluster and see if our multi-container-pod is created under that cluster.

![Visual studio page](images/portal.png)
***

![Visual studio page](images/cont1.png)



- ## Yes, we can see that multi-container-pods are running succesfully.



# Initcontainer

- The YAML file describes a Kubernetes Pod with the name "my-pod".
- The Pod has two containers:
- "init-container" which runs the busybox image and its command:
- Executes /bin/sh -c "echo 'Running...' && sleep 60"
- Prints "Running..." and sleeps for 60 seconds.
- "actual-container" which runs the nginx image and its command:
- Executes /bin/sh -c "echo 'Initalized after 60 seconds ..'"
- Prints "Initalized after 60 seconds ..".

# MultiContainer

- The YAML file describes a Kubernetes Pod with the name "multi-container-pod".
- The Pod has two containers:
- "container-1" which runs the nginx:latest image and exposes port 80.
- "container-2" which runs the redis:alpine image and exposes port 6379.








