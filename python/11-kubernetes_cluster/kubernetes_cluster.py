from kubernetes import client, config

# Load the Kubernetes configuration from the default location
config.load_kube_config()

# Create an API client for the CoreV1Api
v1 = client.CoreV1Api()

# List all pods in the default namespace
pods = v1.list_pod_for_all_namespaces(watch=False)
for pod in pods.items:
    print(pod.metadata.name)
