![TechSlate](../../global/images/ts.png)

#  Introduction

- What is ``Amazon Elastic Beanstalk`` ?

    Amazon Elastic Beanstalk is an easy-to-use service for deploying and scaling web applications and services developed with Java, .NET, PHP, Node.js, Python, Ruby, Go, and Docker on familiar servers such as Apache, Nginx, Passenger, and IIS.


## To create ``Amazon Elastic Beanstalk``, using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

## Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

- ### Also , Please make sure to assign some policies to the user with respect to ```AWS-Elastic-Beanstalk```.

![EC2 Instance](../images/cli-ebs-roles.png)

## Process

# **AWS-Console**

- ### **Open the AWS-Console and search for ``Elastic Beanstalk`` in the console , So there are 2 things to create here ```Application``` and ```Environment``` . Click on ```Application```

  ![EC2 Instance](../images/cre-app.png)

- ### **Click on ``Create Application``** .

  ![EC2 Instance](../images/app.png)

- ### **Give the Application name** .

  ![EC2 Instance](../images/app-name.png)

- ### **Click on ```Create```.**

  ![EC2 Instance](../images/create.png)

- ### **Now Click on ```Create Environment```**

  ![EC2 Instance](../images/cre-env.png)

- ### **Here , the Application name is already been recognised , Let's move to the next steps**.

  ![EC2 Instance](../images/auto.png)

- ### **Coming to the Environment Information , it has suggested some name lets keep the same and Domain lets take default.**

  ![EC2 Instance](../images/ebs-env.png)

- ### **Now lets move to the Platform , select the platform of your wish , for now lets take ```Php```** .

  ![EC2 Instance](../images/php.png)

- ### **Let the ```Application code``` and ```Presets``` remain same , Click on ```Next```**

  ![EC2 Instance](../images/default.png)

- ### **Coming to service access , Lets go with ```Create and use new service role```**

  ![EC2 Instance](../images/serv-acc.png)

- ### **Now to move further we need to have ```EC2 Instance profile``` .**

  ![EC2 Instance](../images/insta.png)

- ### **You can also follow the AWS developer guide as well which will give a clean steps to proceed further.**

     ### https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/environments-create-wizard.html

     ![EC2 Instance](../images/dev-guide.png)

- ### **So, lets Go to ```IAM``` , Click on ```Roles``` & Click on ```Create Role```.

  ![EC2 Instance](../images/IAM.png)

- ### **Let the Trusted entity be ```AWS Service``` and Use Case be ```EC2```. Click on ```Next```**.

  ![EC2 Instance](../images/ec2.png)

- ### **Now we need to attach the policies to the role as mentioned in the document which is mentioned below.**

  ![EC2 Instance](../images/pol-ebs.png)

- ### **So, search for the policy , select that and click on ```Next```.**

  ![EC2 Instance](../images/next.png)

- ### **Give the proper ```Role name``` .**

  ![EC2 Instance](../images/role-name.png)

- ### **Click on ```Create Role```**

  ![EC2 Instance](../images/EBS-ROLE.png)


- ### **So, the role got successfully created.``**

  ![EC2 Instance](../images/ebs-role2.png)


- ### **Now , lets switch back to the tab where , we had to enter ```EC2 instance profile``` And now we can choose our role here. Click on ```Next```**

  ![EC2 Instance](../images/ec2022.png)

- ### **Here in ```VPC``` , Select the default one which is already provided.**
  ![EC2 Instance](../images/vpc.png)

- ### **Moving further , in ```Instance Subnets``` , Choose the random one.**
  ![EC2 Instance](../images/instan.png)

- ### **Straightly come down and click on ```Next```**
  ![EC2 Instance](../images/next..png)

- ### **Under the Instances->Root Volume , Let everything remain same**
  ![EC2 Instance](../images/ins.png)

- ### **Under ```EC2 Security Groups``` keep it ```default```**
  ![EC2 Instance](../images/ec2-inst.png)

- ### **So , Just scroll down and click on ```Next```**
  ![EC2 Instance](../images/next-ebs.png)

- ### **Coming to the next step , Under Monitoring the whole step keep it as it as and click on  ```Next```**
  ![EC2 Instance](../images/ebs-mon.png)

- ### **The final step is Review , just check everything and click on  ```Submit```**
  ![EC2 Instance](../images/review.png)

- ### **It take some time to create , lets wait for it to create**
  ![EC2 Instance](../images/wait.png)

 - ### **The environment is successfully created. Just click on domain URl to access the app .**
  ![EC2 Instance](../images/succ.png)
 
 - ### **we can see that the app is running.**
  ![EC2 Instance](../images/app-run.png)
***
<br>

# **AWS-CLI**

- ### Open the command line of your choice and run following command with provided **Access Key ID** and **Secret Access Key** .

      aws configure 

    ![EC2 Instance](../images/aws-conf.png)

- ### Lets run the following command to create application using AWS-Cli Command.

      aws elasticbeanstalk create-application --application-name MyEBApp

    ![EC2 Instance](../images/cli-ebs.png)

- ### Next, Let's Create an environment within the application.

       aws elasticbeanstalk create-environment   --application-name MyEBApp   --environment-name MyEBEnvironment   --solution-stack-name "64bit Amazon Linux 2018.03 v2.9.11 running PHP 5.4"

   ![EC2 Instance](../images/cli-ebs-env.png)