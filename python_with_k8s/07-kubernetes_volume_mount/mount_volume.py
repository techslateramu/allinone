from kubernetes import client, config

# Load Kubernetes configuration from default location
config.load_kube_config()

# Create Kubernetes client objects
v1 = client.CoreV1Api()

# Define the Pod spec
pod_spec = client.V1PodSpec(
    containers=[client.V1Container(
        name="my-container",
        image="my-image",
        volume_mounts=[client.V1VolumeMount(
            name="my-volume",
            mount_path="/data"
        )]
    )],
    volumes=[client.V1Volume(
        name="my-volume",
        persistent_volume_claim=client.V1PersistentVolumeClaimVolumeSource(
            claim_name="my-pvc"
        )
    )]
)

# Define the Pod object
pod = client.V1Pod(
    metadata=client.V1ObjectMeta(
        name="my-pod",
        labels={"app": "my-app"}
    ),
    spec=pod_spec
)

# Create the Pod
v1.create_namespaced_pod(
    namespace="my-namespace",
    body=pod
)
