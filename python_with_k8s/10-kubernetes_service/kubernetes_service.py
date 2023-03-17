from kubernetes import client, config

# Load the Kubernetes configuration
config.load_kube_config()

# Create a Kubernetes client object
api = client.CoreV1Api()

# Define the Service object
service = {
    "apiVersion": "v1",
    "kind": "Service",
    "metadata": {
        "name": "my-service"
    },
    "spec": {
        "selector": {
            "app": "my-app"
        },
        "ports": [
            {
                "name": "http",
                "port": 80,
                "targetPort": 8080
            }
        ]
    }
}

# Create the Service object
api.create_namespaced_service(namespace="default", body=service)

# Get the Service object
service = api.read_namespaced_service(name="my-service", namespace="default")

# Print the Service object
print(service)
