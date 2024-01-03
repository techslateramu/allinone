![TechSlate](../../global/images/ts.png)

# <span style="color: gold;"> Introduction

- What is ``Amazon Simple Queue Service (SQS)`` ?

    ``Amazon Simple Queue Service (Amazon SQS)`` is a pay-per-use web service for storing messages in transit between computers. Developers use SQS to build distributed applications with decoupled components without having to deal with the overhead of creating and maintaining message queues.

## To create Amazon Simple Queue Service (SQS), using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

1.[AWS Console](#aws-console)

2.[AWS-CLI](#aws-cli)

3.[Powershell](#powershell)

# <span style="color: gold;">Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

# <span style="color: gold;">Process

## <span style="color: pink;">**AWS-Console**

| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Open the AWS Console and search for SQS. Click on ``Create a Queue``.** | ![Step 1](../images/SQS-1.png) |
| 2. | **Select ``Queue Type`` as ``Standard`` and also give the ``Queue Name`` Respectively.** | ![Step 2](../images/SQS-2.png) |
| 3. | **Let the ``Configuration`` parameters be default.** | ![Step 3](../images/SQS-3.png) |
| 4. | **Moving to ``Encryption`` keep the values as it is , keep them default**. | ![Step 4](../images/SQS-4.png) |
| 5. | **Coming to the the ``Access Policy``, keep the method as ``Basic``.** | ![Step 5](../images/SQS-5.png) | 
| 6. | **Leaving everything default , Click on ``Create queue`` .** | ![Step 6](../images/SQS-6.png) |
| 7. | **You can see that ``Queue`` got created successfully.**| ![Step 7](../images/SQS-7.png) |
| 8. | **Now lets click on ``send and receive message``** .| ![Step 8](../images/SQS-8.png) |
| 9. | **Here in the Message body fill in the ``Message``what you want to send and Click on ``Send Message``.** | ![Step 9](../images/SQS-9.png) |
| 10.|**You can see that the Message is been sent successfully.** | ![Step 10](../images/SQS-10.png) |
| 11.|**Click on ``Poll for Messages``.** | ![Step 11](../images/SQS-11.png) |
| 12.|**And you can see 1 Message appearing with respective ``ID``. Please click on ``ID`` .** | ![Step 12](../images/SQS-12.png) |
| 13.|**Now , you can the message displaying in the body** | ![Step 13](../images/SQS-13.png) |
| 14.|**You can click on ``Details`` , to see more details of the Message** | ![Step 13](../images/SQS-13.png) |

***
<br>

## <span style="color: pink;">**AWS-CLI**


| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Open the command line of your choice and run following command with provided **Access Key ID** and **Secret Access Key**** <br> ``aws configure`` | ![Step 1](../images/aws-conf.png) |
| 2. | **Lets run the following command to ``create Queue`` using AWS-Cli Command.** <br> </br>``aws sqs create-queue --queue-name TechQueue-cli``| ![Step 2](../images/sqs-cli-1.png) |
| 3. | **Now, Lets try to send the Message by running following command , You can take ``Queue-Url`` from above output.** <br> </br>``aws sqs send-message --queue-url https://sqs.us-east-1.amazonaws.com/619********/TechQueue-cli --message-body "Hello, SQS-AWSCLI!" ``| ![Step 3](../images/sqs-cli-2.png) |
| 4. | **Now lets run the following command to receive the message , in aws-console we use to do ``Poll Message`` here we are running ``Receive Message``**. <br> </br> ``aws sqs receive-message --queue-url https://sqs.us-east-1.amazonaws.com/619984328970/TechQueue-cli`` . | ![Step 3](../images/sqs-cli-3.png) |
| 5. | **You can also head back to AWS-Console , and check if it got created successfully**.| ![Step 3](../images/sqs-cli-4.png) |



## <span style="color: pink;"> **POWERSHELL**

 ## PowerShell Pre-requisites

 -      Install-Module -Name AWSPowerShell -Force -AllowClobber

 -      Import-Module AWSPowerShell

| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Configure AWS credentials:** <br> ``Initialize-AWSDefaultConfiguration -AccessKey AKIAZAWPSDE***** -SecretKey "your-seceret-key"`` | ![Step 1](../images/ps-cred.png) |
| 2. | **Lets run the following command to ``create Queue`` using PowerShell Command.** <br> </br>``New-SQSQueue -QueueName 'my-new-powershell-queue'``.| ![Step 2](../images/sqs-ps-1.png) |
| 3. | **Now, Lets try to send the Message by running following command , You can take ``Queue-Url`` from above output.** <br> </br>``Send-SQSMessage -QueueUrl 'https://sqs.us-east-1.amazonaws.com/61***********/my-new-powershell-queue' -MessageBody 'Hello, World!'`` | ![Step 3](../images/sqs-ps-2.png) |
| 4. | **Now lets run the following command to receive the message , in aws-console we use to do ``Poll Message`` here we are running ``Receive-SQSMessage``**. <br> </br> ``Receive-SQSMessage -QueueUrl 'https://sqs.us-east-1.amazonaws.com/61**********/my-new-powershell-queue' -MessageCount 1 -VisibilityTimeout 30`` .** | ![Step 4](../images/sqs-ps-3.png) |
| 5. | **You can also head back to AWS-Console , and check if it got created successfully**. | ![Step 1](../images/sqs-ps-4.png) |

