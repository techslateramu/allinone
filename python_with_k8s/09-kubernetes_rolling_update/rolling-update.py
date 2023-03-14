from kubernetes import client, config

# Load configuration from default kubeconfig file
config.load_kube_config()

# Define the deployment name and namespace
deployment_name = "my-deployment"
namespace = "default"

# Get the current deployment object
api = client.AppsV1Api()
deployment = api.read_namespaced_deployment(deployment_name, namespace)

# Update the image tag in the deployment
deployment.spec.template.spec.containers[0].image = "my-image:2.0"

# Perform a rolling update of the deployment
api.patch_namespaced_deployment(deployment_name, namespace, deployment)

# Monitor the rolling update progress
while True:
    deployment = api.read_namespaced_deployment(deployment_name, namespace)
    if deployment.status.updated_replicas == deployment.status.replicas:
        print("Rolling update completed")
        break
    else:
        print(f"Rolling update progress: {deployment.status.updated_replicas}/{deployment.status.replicas}")
