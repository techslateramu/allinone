# LoadBalancer

- The Service has a name of "jenkins-service".
- The selector for the Service is app: jenkins which means that the Service will target Pods that are labeled with this label.
- The Service exposes a single port named "http" on port 80, which maps to targetPort 8080 in the Pod.
- The type of Service is LoadBalancer which means it will create a load balancer for the Service and map it to a public IP.


# NodePort
- Define a Service resource in the Kubernetes API with apiVersion: v1 and kind: Service.
In the metadata section:
- Provide a name for the service using the name field, such as jenkins-service.
In the spec section:
- Define the selector field to specify the labels of the pods that this service should be exposed to, such as app: jenkins.
- Define the ports field to list the ports that should be exposed from the service, such as port 80 mapping to the target port 8080 on the pod.
- Define the targetPort field to specify the port on the pod that should be exposed by the service, such as 8080.
- Define the nodePort field to assign a static port on each node of the cluster, such as 30080.
- Set the type field to NodePort to indicate that the service should be exposed on each node in the cluster and accessible from outside the cluster on the specified nodePort.




# ClusterIP
- Deployment resource named "jenkins-deployment" creates two replicas of a Jenkins application
- Replicas are selected using the label "app: jenkins"
- Containers inside the replicas run the Jenkins image "jenkins/jenkins:2.389-rhel-ubi9-jdk17"
- Port 8080 is exposed by the containers
- Service resource named "jenkins-service" exposes the Jenkins application running inside the replicas
- Service selects pods using the label "app: jenkins"
- Cluster-internal IP is exposed for the Jenkins application
- Jenkins application listens on port 8080 and is accessible through port 80
- Service type is set to "ClusterIP", providing a stable, internal IP address within the cluster.



