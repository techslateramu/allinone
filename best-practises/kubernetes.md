![TechSlate](../global/images/ts.png)

# Introduction 

## *This page contains all the Best-Practices of kubernetes.*

![DevOps](images/kuberneteslogo.png)

# Kubernetes Best Practices

## **Practice1:**  Choosing the Right Kubernetes Object (Mandatory).** ##

- Kubernetes supports a variety of objects. Depending on the use case, one should choose the right Kubernetes object. People get confused about when to use deployment and when to use stateful sets.

- **Deployment:** Deployment can be used when your application doesn’t require persistent data to be stored in a block storage(say EBS, Azure Disks , etc) and doesn’t require clustering. If the persistent data needs to be stored in a file share, then deployment can be chosen. 

- **StatefulSet:** StatefulSet Kind can be used when your application stores persistent data in block storage, or clustering is required, or you want to have static name for the pods. StatefulSets can dynamically spin up PVC(provided you run on cloud providers like EKS, AKS, GKE, etc) using the volumeClaimTemplate .  


## **Practice2: Startup, Liveness, and Readiness Probe (Mandatory)** ##

- **Startup Probe**: Sometimes you would be deploying legacy applications, which would take a long time to get started initially. In such cases, it can be tricky to set up liveness probe parameters without compromising the fast response to deadlocks that motivated such a probe. 

- That’s when a startup probe can be used, which would have the same kind of health check pattern as that of liveness, except the fact that failureThreshold and periodSeconds are long enough to cover the worst-case startup time. 

- **Liveness Probe**: Liveness Probe ensures that the application is healthy by making a health check periodically(based on periodSeconds given). If the health check fails for a consecutive 3 times(by default failureThreshold is 3 and users can change it), then container gets killed and subject to the pod’s restartPolicy . It is always a must to have liveness probe for the applications .

- **Readiness Probe**: Readiness probe ensures that application is ready to receive the traffic. Until the readiness health is satisfied, the container will not accept any traffic. This will make sure that no traffic comes in when the application is not yet ready. Readiness Probe failures will not kill the container. 

## **Practice3: Setting the Resource Caps(Mandatory)** ##

- Kubernetes has different types of quality of service.

- **Guaranteed**: Every container in the pod should have CPU and memory limits and requests set. Also, the request and limit values should be the same. Pods of this QoS will be the last choice when performing eviction. 

- **Burstable**: At least one container in the pod has a memory or CPU request or limit. If the container has both request and limits but the value of request and limits are different, it still falls into the burstable category. The scheduler will look into the requests section of the resources section and will allocate the pod to the corresponding node. 

## **Practice4: Assigning Pods to Nodes(Mandatory)** ##

- For making the application fault-tolerant, we should ensure replicas of the pods are distributed across nodes/availability zones. This can be achieved by anti-affinity for pods. In few scenarios, we would like to run another application(say application B) in the same node where application A runs. 

## **Practice5: HA Setup(Mandatory)** ##

- Each of the applications that we deploy should have at least of 2 replicas, so that the load is distributed and the application is highly available(by following the above practices as well .

## **Practice 6 : Setting Pod Disruption Budgets(Mandatory)** ##

- Pod Disruption Budgets(PDB) will give users the privilege to decide how many instances can be down at the same time for a short period due to a voluntary disruption. The best example for voluntary disruption is putting the node under maintenance mode(draining the node) or performing upgrades.

## **Practice 7: Proper Labels(Mandatory)** ##

- In Kubernetes, we can add labels to almost all the objects. In many occasions people give least importance to labelling. Labels play vital role to forward the traffic when accessing applications using Kubernetes Service(which is how we access the applications always, since pod’s IP are dynamic). Apart from that, if user wants to group/list the objects, at that time labels plays a key role. Have some meaningful and useful labels based on the use cases.

## **Practice 8 : Pod’s Privilege(Mandatory)** ##

- Ensure that the pod’s have least privilege. Avoid running the containers with root permission unless the application requires such privilege. This will have security risks.

## **Practice 9 : Horizontal Pod Autoscaling(Optional)** ##

- Kubernetes supports Horizontal Pod Autoscaling(HPA), where it auto scales the number of replicas for the pod based on the metric user gives. By default Kubernetes Metric Server provides CPU and Memory metrics with which users can auto scale. 

- If user wants to use some other metric apart from CPU/Memory, then that can also be achieved by adopting Prometheus Adapter. Reason why HPA is put under Optional category is, not many applications can adopt HPA(For example: Redis, Elasticsearch, Mongo DB , etc).

## **Practice 10 : Auto Re-deployment on Config Map Update(Optional)** ##

- When a config is updated in a config map that is attached to a pod, we would have to delete the pods to make the changes getting reflected immediately. This is a manual activity. 

- If user wants to bypass this manual activity and instead wants the pods to get re-deployed on config map updates, then it can be achieved using a package manager like Helm.

















