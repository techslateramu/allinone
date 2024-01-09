# filename: deployment.py
from kubernetes import client, config

def create_deployment():
    config.load_kube_config()
    apps_v1 = client.AppsV1Api()

    deployment = client.V1Deployment(
        api_version="apps/v1",
        kind="Deployment",
        metadata=client.V1ObjectMeta(name="example-deployment"),
        spec=client.V1DeploymentSpec(
            replicas=3,
            selector=client.V1LabelSelector(
                match_labels={"app": "example"}
            ),
            template=client.V1PodTemplateSpec(
                metadata=client.V1ObjectMeta(labels={"app": "example"}),
                spec=client.V1PodSpec(
                    containers=[
                        client.V1Container(
                            name="example-container",
                            image="nginx:latest",
                            ports=[client.V1ContainerPort(container_port=80)]
                        )
                    ]
                )
            )
        )
    )

    apps_v1.create_namespaced_deployment(
        body=deployment,
        namespace="default"
    )

if __name__ == "__main__":
    create_deployment()
