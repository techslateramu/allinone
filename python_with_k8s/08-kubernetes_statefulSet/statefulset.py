from kubernetes import client, config

# Load the Kubernetes configuration
config.load_kube_config()

# Create a Kubernetes API client
api = client.AppsV1Api()

# Define the StatefulSet object
statefulset = client.V1StatefulSet(
    metadata=client.V1ObjectMeta(
        name='my-statefulset',
    ),
    spec=client.V1StatefulSetSpec(
        replicas=3,
        selector=client.V1LabelSelector(
            match_labels={
                'app': 'my-app',
            },
        ),
        template=client.V1PodTemplateSpec(
            metadata=client.V1ObjectMeta(
                labels={
                    'app': 'my-app',
                },
            ),
            spec=client.V1PodSpec(
                containers=[
                    client.V1Container(
                        name='my-container',
                        image='nginx',
                    ),
                ],
            ),
        ),
        service_name='my-service',
        volume_claim_templates=[
            client.V1PersistentVolumeClaim(
                metadata=client.V1ObjectMeta(
                    name='my-pvc',
                ),
                spec=client.V1PersistentVolumeClaimSpec(
                    access_modes=['ReadWriteOnce'],
                    resources=client.V1ResourceRequirements(
                        requests={
                            'storage': '1Gi',
                        },
                    ),
                ),
            ),
        ],
    ),
)

# Create the StatefulSet object
api.create_namespaced_stateful_set(
    namespace='default',
    body=statefulset,
)

# Get the StatefulSet object
statefulset = api.read_namespaced_stateful_set(
    name='my-statefulset',
    namespace='default',
)

# Update the StatefulSet object
statefulset.spec.replicas = 5
api.replace_namespaced_stateful_set(
    name='my-statefulset',
    namespace='default',
    body=statefulset,
)

# Delete the StatefulSet object
api.delete_namespaced_stateful_set(
    name='my-statefulset',
    namespace='default',
)
