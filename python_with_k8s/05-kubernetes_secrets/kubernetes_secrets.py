from kubernetes import client, config

# Load the Kubernetes configuration
config.load_kube_config()

# Define the secret data
data = {
    "username": "myusername",
    "password": "mypassword"
}

# Create the secret object
secret = client.V1Secret(
    metadata=client.V1ObjectMeta(name="mysecret"),
    type="Opaque",
    data=data
)

# Create the secret in Kubernetes
api = client.CoreV1Api()
api.create_namespaced_secret(namespace="default", body=secret)

# Retrieve the secret from Kubernetes
secret = api.read_namespaced_secret(name="mysecret", namespace="default")

# Access the secret data
username = secret.data["username"].decode("utf-8")
password = secret.data["password"].decode("utf-8")

# Use the secret data in your application
print(f"Username: {username}")
print(f"Password: {password}")
