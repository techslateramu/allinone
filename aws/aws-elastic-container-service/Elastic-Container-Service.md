![TechSlate](../../global/images/ts.png)

#  Introduction

- What is ```Aws Elastic Container Service``` ?

    Amazon Elastic Container Service (Amazon ECS) is a highly scalable and fast container management service that makes it easy to run, stop, and manage containers on a cluster.


## To create ``AWS ECS``, using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

## Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

- ### Also , Please make sure to assign some policies to the user with respect to ```AWS ECS```. Assign below polcy to you User .

      1. AmazonEC2ContainerRegistryFullAccess
 
    ![EC2 Instance](../images/ecs-role.png)


## Process


# **AWS-Console**

- ### **Open the AWS-Console and search for ``Amazon Elastic Container Service`` in the console search box. Click on ```Create Cluster``` .**

    ![EC2 Instance](../images/cre-ecs.png)

- ### **Give the ```Cluster Name``` and Infrastructure as  ```AWS Fargate (serverless)``` as your choice .**

    ![EC2 Instance](../images/tech-ecs.png)

- ### **Click on ```Create```.**

    ![EC2 Instance](../images/create-ecs.png)

- ### **The Cluster is successfully created. Next step is to create ```Task Definition``` .**

    ![EC2 Instance](../images/cluster.png)

- ### **Give a proper name to ```Task definition``` and Launch Type as ```AWS Fargate``` .**

    ![EC2 Instance](../images/task-ecs.png)

- ### **Moving further , we need to create a container for that we need an Image ``Name`` and ``Image URI``. So, You can the respective image URI from ECR Public Gallery https://gallery.ecr.aws/ .**

    ![EC2 Instance](../images/container.png)

- ### **Just leave remaining thing as default and Click on ``Create``.**

    ![EC2 Instance](../images/cre-taskeve.png)

- ### **The Task definition got created Successsfully.**

    ![EC2 Instance](../images/task-cre.png)

- ### **Now , Click on Deploy and select ``Create Service`` .**

    ![EC2 Instance](../images/serv-cre.png)

- ### **Now , Proceed further and give the ``cluster name`` that you have created before .**

    ![EC2 Instance](../images/clustername.png)

- ### **Keeping everything deafult moving further, Here give the ``Service name``.**

    ![EC2 Instance](../images/servicename.png)   

- ### **Moving further , keep everything default and coming to ``Networking`` section , under ``security group`` choose ``Create a new security group``. Give ``security Group name`` and ``Description`` .**

    ![EC2 Instance](../images/net.png)  

- ### **Under Inbound rules for security group , Select TYPE as ``HTTP`` & SOURCE as ``Anywhere``. And click on ``Create``**.

    ![EC2 Instance](../images/inbound.png)   

- ### **So , under Cluster you can see that ``Service`` got created successfully**.

    ![EC2 Instance](../images/succ-ser.png)  

- ### **So , Now click on the service , you can see your task running and Click on the Public IP > open address**.

    ![EC2 Instance](../images/ip-ecs.png)  

- ### **Here you go , and you can see Nginx is running successfully**.

    ![EC2 Instance](../images/nginx-app.png) 

<br>
<hr>



