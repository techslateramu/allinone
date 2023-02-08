# LoadBalancer

- The Service has a name of "jenkins-service".
- The selector for the Service is app: jenkins which means that the Service will target Pods that are labeled with this label.
- The Service exposes a single port named "http" on port 80, which maps to targetPort 8080 in the Pod.
- The type of Service is LoadBalancer which means it will create a load balancer for the Service and map it to a public IP.


# NodePort