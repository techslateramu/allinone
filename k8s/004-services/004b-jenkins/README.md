![TechSlate](../../../global/images/ts.png)

# **How to run k8s Services ?**

# Table of contents
1.[Introduction](#introduction)

2.[Prerequisites](#pre-requisites)

3.[How to run k8s services ?](#how-to-run-k8s-services-1)

## **Introduction**

### **What is Deployment?** 

- A Deployment provides declarative updates for Pods and ReplicaSets.

You describe a desired state in a Deployment, and the Deployment Controller changes the actual state to the desired state at a controlled rate. You can define Deployments to create new ReplicaSets, or to remove existing Deployments and adopt all their resources with new Deployments.


### **What is Service in k8s ?** 

- In Kubernetes, a Service is a method for exposing a network application that is running as one or more Pods in your cluster.

- A key aim of Services in Kubernetes is that you don't need to modify your existing application to use an unfamiliar service discovery mechanism. You can run code in Pods, whether this is a code designed for a cloud-native world, or an older app you've containerized. You use a Service to make that set of Pods available on the network so that clients can interact with it.

- If you use a Deployment to run your app, that Deployment can create and destroy Pods dynamically. From one moment to the next, you don't know how many of those Pods are working and healthy; you might not even know what those healthy Pods are named. Kubernetes Pods are created and destroyed to match the desired state of your cluster. Pods are emphemeral resources (you should not expect that an individual Pod is reliable and durable).

- Each Pod gets its own IP address (Kubernetes expects network plugins to ensure this). For a given Deployment in your cluster, the set of Pods running in one moment in time could be different from the set of Pods running that application a moment later.

### LoadBalancer

- The Service has a name of "jenkins-service".
- The selector for the Service is app: jenkins which means that the Service will target Pods that are labeled with this label.
- The Service exposes a single port named "http" on port 80, which maps to targetPort 8080 in the Pod.
- The type of Service is LoadBalancer which means it will create a load balancer for the Service and map it to a public IP.


### NodePort
- Define a Service resource in the Kubernetes API with apiVersion: v1 and kind: Service.
In the metadata section:
- Provide a name for the service using the name field, such as jenkins-service.
In the spec section:
- Define the selector field to specify the labels of the pods that this service should be exposed to, such as app: jenkins.
- Define the ports field to list the ports that should be exposed from the service, such as port 80 mapping to the target port 8080 on the pod.
- Define the targetPort field to specify the port on the pod that should be exposed by the service, such as 8080.
- Define the nodePort field to assign a static port on each node of the cluster, such as 30080.
- Set the type field to NodePort to indicate that the service should be exposed on each node in the cluster and accessible from outside the cluster on the specified nodePort.




### ClusterIP
- Deployment resource named "jenkins-deployment" creates two replicas of a Jenkins application
- Replicas are selected using the label "app: jenkins"
- Containers inside the replicas run the Jenkins image "jenkins/jenkins:2.389-rhel-ubi9-jdk17"
- Port 8080 is exposed by the containers
- Service resource named "jenkins-service" exposes the Jenkins application running inside the replicas
- Service selects pods using the label "app: jenkins"
- Cluster-internal IP is exposed for the Jenkins application
- Jenkins application listens on port 8080 and is accessible through port 80
- Service type is set to "ClusterIP", providing a stable, internal IP address within the cluster.

***

## **Pre-requisites**

**To run a service , you will need to have the following prerequisites installed and configured on your machine:**

**AKS Cluster (Azure kubernetes service):** 

- AKS is an open-source fully managed container orchestration service that became available in June 2018 and is available on the Microsoft Azure public cloud that can be used to deploy, scale and manage Docker containers and container-based applications in a cluster environment.

- Azure Kubernetes Service offers provisioning, scaling, and upgrades of resources as per requirement or demand without any downtime in the Kubernetes cluster and the best thing about AKS is that you don’t require deep knowledge and expertise in container orchestration to manage AKS.

**YAML file**

- A YAML file is a text document that contains data formatted using YAML (YAML Ain't Markup Language), a human-readable data format used for data serialization. It is used for reading and writing data independent of a specific programming language.

**A text editor:**

- You will need a text editor to create and edit the docker-compose.yml file that defines the configuration for your SonarQube and Postgres containers. Some popular text editors include Visual Studio Code, Sublime Text, and Atom.


***
# **How to run k8s services ?**

## Lets run jenkins as a Service.

- ## First create a folder with appropriate title .

![Visual studio page](images/folder.png)

- ## Under `004b-jenkins` folder we shall create 3 different yaml files showing up 3 different service types i.e. `jenkins-cip.yaml` (Cluster IP) , `jenkins-lb.yaml` (Load Balancer) , `jenkins-np.yaml` (NodePort).

![Visual studio page](images/yaml.png)


- ## Lets got to Azure Portal and make sure our AKS Cluster is started and running.

![Visual studio page](images/aks.png)

- ## Now , lets go back to our VS Code and open the terminal and run the services one by one..

- ## Lets get started with `jenkins-cip.yaml` (Cluster IP) , run the following command to run the deployment and service.

```
kubectl apply -f jenkins-cip.yaml
```
![Visual studio page](images/cip.png)

- ## We can see that deployment and service is created.

- ## Let's run the following commands to see the deployments and pods running.

```
kubectl get deploy
```

```
kubectl get pods
```

![Visual studio page](images/cipdeploy.png)

- ## Let's run the following command to see service running.

```
kubectl get svc
```
- ## Run the following command to describe the service.

```
kubectl describe svc jenkins-service
```

![Visual studio page](images/cipsvc.png)

- ## If you want see the expanded output of pod or service , run the following command

```
kubectl get pods -o wide
```

```
kubectl get svc -o wide
```
![Visual studio page](images/cipwide.png)


- ## If you see under the External IP there is no Ip address given , that means in clusterIP service we cannot access externally ,we can access it using ingress controller.


- ## Lets go back to Azure portal , go to AKS Cluster and see services running.

![Visual studio page](images/akssvc.png)


- ## We can see that jenkins service is running successfully.

![Visual studio page](images/jenkinssvc.png)

- ## If we click on that jenkins service , we can see 2 pods running .

![Visual studio page](images/jenkinspod.png)

- ## Before we get into the another service lets delete the present deployment and service , for that run the following commands

```
kubectl delete svc jenkins-service
```

```
kubectl delete deploy jenkins-deployment
```

![Visual studio page](images/delete.png)


- ## Lets move to  `jenkins-lb.yaml` (LoadBalancer) , run the following command to run the deployment and service.

```
kubectl apply -f jenkins-lb.yaml
```
![Visual studio page](images/lb.png)

- ## Let's run the following command to see service running.

```
kubectl get svc
```
![Visual studio page](images/lbsvc.png)

- ## Let's run the following commands to see the deployments and pods running.

```
kubectl get deploy
```

```
kubectl get pods
```

![Visual studio page](images/lbdeploy.png)

- ## Lets go back to Azure portal , go to AKS Cluster and see services running.

![Visual studio page](images/akslb.png)

- ## As the service type is LoadBalancer we got External IP , Now can have the access to jenkins application , just click on the External IP.

![Visual studio page](images/externalip.png)

- ## Here it is , you can give administrative password and access the jenkins application.

![Visual studio page](images/jenkins.png)

## Lets move to the final service type  `jenkins-np.yaml` (NodePort) , run the following command to run the deployment and service.

```
kubectl apply -f jenkins-np.yaml
```
![Visual studio page](images/np.png)

- ## Let's run the following commands to see the Service and pods running.

```
kubectl get svc
```

```
kubectl get pods
```
![Visual studio page](images/npsvc.png)

- ## Lets go back to Azure portal , go to AKS Cluster and see services running.

![Visual studio page](images/npaks.png)

- ## The benefit of NodePort is you can directly access the service using the nodes 

- ## Run the following command to see the expanded output of running nodes

```
kubectl get nodes -o wide
```
![Visual studio page](images/nodes.png)

- ## You an access the jenkins service by giving the IP Address as shown below.

![Visual studio page](images/access.png)
