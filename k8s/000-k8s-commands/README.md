![TechSlate](../../global/images/ts.png)

# Kubernetes Cheatsheet

This cheatsheet contains a list of the top 50 commonly used `kubectl` commands.

## Pods
- `kubectl get pods` - Lists all pods in the current namespace
- `kubectl describe pod <pod-name>` - Provides detailed information about a specific pod

## Services
- `kubectl get services` - Lists all services in the current namespace
- `kubectl describe service <service-name>` - Provides detailed information about a specific service

## Deployments
- `kubectl get deployments` - Lists all deployments in the current namespace
- `kubectl describe deployment <deployment-name>` - Provides detailed information about a specific deployment

## Nodes
- `kubectl get nodes` - Lists all nodes in the cluster
- `kubectl describe node <node-name>` - Provides detailed information about a specific node

## Replicasets
- `kubectl get replicasets` - Lists all replicasets in the current namespace
- `kubectl describe replicaset <replicaset-name>` - Provides detailed information about a specific replicaset

## Events
- `kubectl get events` - Lists all events in the current namespace

## Logs
- `kubectl logs <pod-name>` - Shows the logs for a specific pod

## Execute command
- `kubectl exec -it <pod-name> -- <command>` - Executes a command in a running container in a specific pod

## Scale
- `kubectl scale deployment <deployment-name> --replicas=<number>` - Scales the number of replicas in a deployment

## Apply Configuration
- `kubectl apply -f <file-name.yaml>` - Apply a configuration to a resource by file

## Delete resources
- `kubectl delete deployment <deployment-name>` - Deletes a deployment

## Create resources
- `kubectl create -f <file-name.yaml>` - Create a resource by file

## Edit resources
- `kubectl edit <resource-name>` - Edit a resource in-place

## Labels
- `kubectl label <resource-name> <label-key>=<label-value>` - Add/update a label to a resource

## Expose
- `kubectl expose <resource-name> --port=<port> --target-port=<target-port> --name=<service-name> --type=<type>` - Expose a resource as a new Kubernetes service

and many more commands like this, these are few examples.

















--- 
# TOP 50 Commands

    kubectl get pods - Lists all pods in the current namespace
    kubectl describe pod <pod-name> - Provides detailed information about a specific pod
    kubectl get services - Lists all services in the current namespace
    kubectl describe service <service-name> - Provides detailed information about a specific service
    kubectl get deployments - Lists all deployments in the current namespace
    kubectl describe deployment <deployment-name> - Provides detailed information about a specific deployment
    kubectl get nodes - Lists all nodes in the cluster
    kubectl describe node <node-name> - Provides detailed information about a specific node
    kubectl get replicasets - Lists all replicasets in the current namespace
    kubectl describe replicaset <replicaset-name> - Provides detailed information about a specific replicaset
    kubectl get events - Lists all events in the current namespace
    kubectl logs <pod-name> - Shows the logs for a specific pod
    kubectl exec -it <pod-name> -- <command> - Executes a command in a running container in a specific pod
    kubectl scale deployment <deployment-name> --replicas=<number> - Scales the number of replicas in a deployment
    kubectl apply -f <file-name.yaml> - Apply a configuration to a resource by file
    kubectl delete deployment <deployment-name> - Deletes a deployment
    kubectl create -f <file-name.yaml> - Create a resource by file
    kubectl edit <resource-name> - Edit a resource in-place
    kubectl label <resource-name> <label-key>=<label-value> - Add/update a label to a resource
    kubectl expose <resource-name> --port=<port> --target-port=<target-port> --name=<service-name> --type=<type> - Expose a resource as a new Kubernetes service
    Please note that above commands are the common and widely used commands, but not the complete list of kubectl commands.
    kubectl get pods --all-namespaces - Lists all pods in all namespaces
    kubectl get svc --all-namespaces - Lists all services in all namespaces
    kubectl get deployments --all-namespaces - Lists all deployments in all namespaces
    kubectl get replicaSets --all-namespaces - Lists all replicasets in all namespaces
    kubectl get nodes --show-labels - Lists all nodes in the cluster with labels
    kubectl get pods --selector=<label-key>=<label-value> - Lists all pods with a specific label
    kubectl top pods - Shows the resource usage of pods
    kubectl top nodes - Shows the resource usage of nodes
    kubectl cluster-info - Shows the cluster information
    kubectl config view - Show the kubeconfig settings
    kubectl config set-context <context-name> - Sets the current context
    kubectl config use-context <context-name> - sets the current-context in kubeconfig
    kubectl create namespace <namespace-name> - Creates a new namespace
    kubectl get namespaces - Lists all namespaces
    kubectl config set-credentials <user-name> --token=<token> - Sets the user credentials in kubeconfig
    kubectl config set-cluster <cluster-name> --server=<cluster-url> - sets the cluster information in kubeconfig
    kubectl api-resources - Lists all resources supported by the API server
    kubectl api-versions - Lists all API versions supported by the API server
    kubectl explain <resource-name> - Provides detailed information about a specific resource
    kubectl port-forward <pod-name> <local-port>:<remote-port> - Forward one or more local ports to a pod
    kubectl attach <pod-name> -c <container-name> - Attach to a running container in a pod
    kubectl cp <pod-name>:<path-in-container> <local-path> - Copy files and directories to and from containers
    kubectl auth can-i <verb> <resource> - Check if the user can perform an action
    kubectl convert -f <file-name.yaml> -o json - convert config file to json
    kubectl create secret <secret-name> --from-file=<file-name> - Create a secret from a file
    kubectl create configmap <configmap-name> --from-file=<file-name> - Create a configmap



