from kubernetes import client, config

# Load Kubernetes configuration
config.load_kube_config()

# Initialize Kubernetes API client
v1 = client.CoreV1Api()

# Define the ConfigMap
metadata = client.V1ObjectMeta(name="my-config")
data = {"database-url": "localhost:5432", "database-name": "mydb"}
config_map = client.V1ConfigMap(data={"config.ini": data}, metadata=metadata)

# Create the ConfigMap
v1.create_namespaced_config_map(namespace="my-namespace", body=config_map)

# Retrieve the ConfigMap
config_map = v1.read_namespaced_config_map(name="my-config", namespace="my-namespace")

# Get the data from the ConfigMap
data = config_map.data["config.ini"]

# Print the data
print(data)
