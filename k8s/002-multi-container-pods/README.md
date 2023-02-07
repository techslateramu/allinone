# Initcontainer

- The YAML file describes a Kubernetes Pod with the name "my-pod".
- The Pod has two containers:
- "init-container" which runs the busybox image and its command:
- Executes /bin/sh -c "echo 'Running...' && sleep 60"
- Prints "Running..." and sleeps for 60 seconds.
- "actual-container" which runs the nginx image and its command:
- Executes /bin/sh -c "echo 'Initalized after 60 seconds ..'"
- Prints "Initalized after 60 seconds ..".

# MultiContainer

- The YAML file describes a Kubernetes Pod with the name "multi-container-pod".
- The Pod has two containers:
- "container-1" which runs the nginx:latest image and exposes port 80.
- "container-2" which runs the redis:alpine image and exposes port 6379.








