![TechSlate](../../global/images/ts.png)

#  Introduction

- What is ``AWS App Runner`` ?

    AWS App Runner is a fully managed service that makes it easy for you to build, deploy, and scale containerized web applications quickly. It abstracts away the complexity of infrastructure management and provides a streamlined experience for developers. 


## To create ``AWS App Runner``, using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

## Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

- ### Also , Please make sure to assign the following policy to the user with respect to ```AWS AppRunner```.

  ```AmazonEC2ContainerRegistryFullAccess```

   ![EC2 Instance](../images/approles.png)

## Process

# **AWS-Console**

- ### **Open the AWS-Console and search for ``AWS App Runner`` in the console . Click on ```Create Service```.

  ![EC2 Instance](../images/cre-serv.png)

- ### **In the first place to proceed further we need Container image URI , So lets create one repo and image for this** .

  ![EC2 Instance](../images/ecr.png)

- ### **Go to the search box and search for ECR (Amazon Elastic Container Registry) and click on ```Create repository```** .

  ![EC2 Instance](../images/cre-rep.png)

- ### **Let's keep the repository ```Private``` along with that give some name to your repository .**

  ![EC2 Instance](../images/cre-rep2.png)

- ### **Now Repository creation is done , To create image we need to Dockerfile, Which we have already created for you.**

  ![EC2 Instance](../images/Dockerfile.png)

- ### **Now come back to Repository and click on ```View Push commands``` , by running them we can see image is been creating inside repository**.

  ![EC2 Instance](../images/push.png)

- ### **Run all of the commands one by one !**

  ![EC2 Instance](../images/run.png)

- ### **All of the commands are run successfully !** .

  ![EC2 Instance](../images/commands.png)

- ### **Lets go back to repository and see if image is reflecting their.And we can see it perfectly.**

  ![EC2 Instance](../images/done.png)

- ### **Open the image and copy the URI and move back to the page of AWS AppRunner.**

  ![EC2 Instance](../images/uri.png)

- ### **Past the URI here.**

  ![EC2 Instance](../images/paste.png)

- ### **In ECR access Role , Click on ```Create new service role```.**

  ![EC2 Instance](../images/approle.png)

- ### **Moving further give the proper ```Service name```.**

  ![EC2 Instance](../images/Techservice.png)

- ### **Just Scroll down and Click on ```Next```**.

  ![EC2 Instance](../images/next,.png)

- ### **Now in Review and Create just check if everything is properly given. and Click on ```Create and Deploy```.**

  ![EC2 Instance](../images/cre-dep.png)

- ### **It will take time to process , Lets wait.**

  ![EC2 Instance](../images/process.png)

- ### **Here it is , The service got deployed Successfully .**

  ![EC2 Instance](../images/deploy-succ.png)

- ### **Click on the ```Default Domain```**

  ![EC2 Instance](../images/url-1.png)


- ### **Here it is , we can ```Hello-World !``` appearing on the page**

  ![EC2 Instance](../images/hello-world.png)

***