![TechSlate](../global/images/ts.png)

# Introduction 

Thi is the home page containing links to all sub sections of Kubernetes.

## What is Kubernetes ?

- Kubernetes is a portable, extensible, open source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available.

## Why you need Kubernetes and what it can do ?

Containers are a good way to bundle and run your applications. In a production environment, you need to manage the containers that run the applications and ensure that there is no downtime. For example, if a container goes down, another container needs to start. Wouldn't it be easier if this behavior was handled by a system?

That's how Kubernetes comes to the rescue! Kubernetes provides you with a framework to run distributed systems resiliently. It takes care of scaling and failover for your application, provides deployment patterns, and more. For example: Kubernetes can easily manage a canary deployment for your system.

Kubernetes provides you with:

- **Service discovery and load balancing** Kubernetes can expose a container using the DNS name or using their own IP address. If traffic to a container is high, Kubernetes is able to load balance and distribute the network traffic so that the deployment is stable.

- **Storage orchestration** Kubernetes allows you to automatically mount a storage system of your choice, such as local storages, public cloud providers, and more.

- **Automated rollouts and rollbacks** You can describe the desired state for your deployed containers using Kubernetes, and it can change the actual state to the desired state at a controlled rate. For example, you can automate Kubernetes to create new containers for your deployment, remove existing containers and adopt all their resources to the new container.

- **Automatic bin packing** You provide Kubernetes with a cluster of nodes that it can use to run containerized tasks. You tell Kubernetes how much CPU and memory (RAM) each container needs. Kubernetes can fit containers onto your nodes to make the best use of your resources.

- **Self-healing** Kubernetes restarts containers that fail, replaces containers, kills containers that don't respond to your user-defined health check, and doesn't advertise them to clients until they are ready to serve.

- **Secret and configuration management** Kubernetes lets you store and manage sensitive information, such as passwords, OAuth tokens, and SSH keys. You can deploy and update secrets and application configuration without rebuilding your container images, and without exposing secrets in your stack configuration.


# Details and Links of the Sections 

S.No| Topic| Link |
|---------------------------|------------------------------------|------------------------------------------------------------------|
|000| Kubernetes Commands|[Kubernetes Cheatsheet](000-k8s-commands/README.md) |
|001| Single-pods| [How to run a single k8s pod ?](001-single-pods/001a-nginx-pod/README.md) |
|002| multi-container-pods| [How to run multiple k8s pods ?](002-multi-container-pods/README.md) |
|003| Deployments| [How to run a Deployment?](003-deployments/003b-jenkins/README.md) |
|004| Services| [How to run k8s Services ?](004-services/004b-jenkins/README.md) |
|005| Ingress| [How to run ingress ?](005-ingress/005a-jenkins-ingress/README.md) |
|006| Storage-config-secrets| [How to create Storage ,ConfigMap , Secret in k8s ?](006-storage-config-secrets/006a-jenkins-secrets/README.md) |
|007| Projects| [This is a mini project of K8S, which deploys few services listed below and connect them through ingress.](007-projects/001-custom/README.md) |