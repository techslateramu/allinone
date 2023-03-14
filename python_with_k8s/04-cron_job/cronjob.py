from kubernetes import client, config

# Load the Kubernetes configuration
config.load_kube_config()

# Create the Kubernetes API client
api_client = client.BatchV1beta1Api()

# Define the CronJob object
cron_job = client.V1beta1CronJob(
    api_version="batch/v1beta1",
    kind="CronJob",
    metadata=client.V1ObjectMeta(name="my-cron-job"),
    spec=client.V1beta1CronJobSpec(
        schedule="*/1 * * * *",  # Run every minute
        job_template=client.V1beta1JobTemplateSpec(
            spec=client.V1JobSpec(
                template=client.V1PodTemplateSpec(
                    spec=client.V1PodSpec(
                        containers=[
                            client.V1Container(
                                name="my-container",
                                image="my-image",
                                command=["python", "/path/to/my/script.py"],
                            )
                        ]
                    )
                )
            )
        )
    )
)

# Create the CronJob object in Kubernetes
api_client.create_namespaced_cron_job(
    namespace="default",
    body=cron_job,
)

