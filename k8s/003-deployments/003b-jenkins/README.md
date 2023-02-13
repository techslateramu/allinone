# Jenkins Deployment

- The Deployment has a name of "jenkins-deployment".
- It will create one replica of the Jenkins Pod.
- The selector for the Pod is app: jenkins which means that the Pod will be selected by this label.
The Pod has a container named "jenkins" which runs the jenkins/jenkins:lts image.
The container exposes two ports: 8080 and 50000.
The Pod also has a volume named "jenkins-home" which is mounted at /var/jenkins_home in the container and is backed by a PersistentVolumeClaim named "jenkins-pvc".


# Command to Run Deployment
```
kubectl apply -f jenkins-deployment.yaml
```

# Command to see the history of deployment
```
kubectl apply -f jenkins-deployment.yaml
```

# Command to see the history of deployment
```
kubectl rollout history deployment/jenkins-deployment
```

# Command to see the history of deployment
```
kubectl rollout undo deployment/jenkins-deployment --to-revision=2
```
