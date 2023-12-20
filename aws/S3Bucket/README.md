![TechSlate](../../global/images/ts.png)

#  Introduction

- What is ``Amazon S3Bucket`` ?

    Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. Customers of all sizes and industries can use Amazon S3 to store and protect any amount of data for a range of use cases, such as data lakes, websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics.

# To create AWS S3 Bucket, using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

1.[AWS Console](#aws-console)

2.[AWS-CLI](#aws-cli)

3.[Powershell](#powershell)

## Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

## Process

# **AWS-Console**

- ### **Open the AWS-Console and search for S3 in the console , Start with giving ```Bucket Name```** .

  ![EC2 Instance](../images/creates3.png)

- ### **Click on ``Create Bucket``** .

  ![EC2 Instance](../images/CLICK.png)

- ### **Now you can see that S3 Bucket got created succefully ``s3bucket212``** .

  ![EC2 Instance](../images/created.png)

- ### **Now if you want to add any files to it , you can click on ```upload``` .**

  ![EC2 Instance](../images/upload.png)

- ### **Click on ``Add file.``**

  ![EC2 Instance](../images/addfile.png)

- ### **We have taken a sample student app HTML file and added that to it**

  ![EC2 Instance](../images/addfile.png)

- ### **it got uploaded**

  ![EC2 Instance](../images/uploaded.png)

- ### **Now under properties in storage class select ``Standard`` and click on ``Upload``** .

  ![EC2 Instance](../images/stand.png)

- ### **Uploaded Successfully.***

  ![EC2 Instance](../images/upd.png)

- ### **Now come back to the ``s3bucket212`` as we need to assign certain permissions to it , Click on ``Permissions``***

  ![EC2 Instance](../images/per.png)

- ### **Here in Block Pulic access , click on ```edit```.***

  ![EC2 Instance](../images/edit.png)

- ### **Uncheck the Checkbox of it.**

  ![EC2 Instance](../images/uncheck.png)

- ### **Click on ``Save Changes``.**

  ![EC2 Instance](../images/save.png)

- ### **Scroll down and come to Bucket Policy , Click on ``Edit``.**

  ![EC2 Instance](../images/buck-pol.png)

- ### **Click on Add New Statement.**

  ![EC2 Instance](../images/policy.png)

- ### **Now make some changes to the policy as shown in below picture , just replacee resource with you resource name , as its placed above policy statement. Make sure to add ```/*``` to resource.**

  ![EC2 Instance](../images/added.png)

- ### **Click on ```Save Changes```**

  ![EC2 Instance](../images/savechanges.png)


- ### **Now , lets open the ``student.html``**

  ![EC2 Instance](../images/last.png)


- ### **Now , click on the ```Object URL```**

  ![EC2 Instance](../images/URL.png)

- ### **You can see student application Running Successfully**

  ![EC2 Instance](../images/Stu-app.png)

***
<br>


# **AWS-CLI**

- ### Open the command line of your choice and run following command with provided **Access Key ID** and **Secret Access Key** .

      aws configure 

    ![EC2 Instance](../images/aws-conf.png)

- ### Lets run the following command to create S3bucket using AWS-Cli Command.

      aws s3api create-bucket --bucket s3bucket-cli-demo --region us-east-1

    ![EC2 Instance](../images/s3-cli.png)

- ### Now as S3Bucket got created , its time for us to upload some file to it , lets get into the proper path of our aws folder where html file their , and run following command to upload file into the bucket. Html file is placed under ```aws/S3Bucket ```folder

    ![EC2 Instance](../images/stu.png)

      aws s3 cp student.html s3://s3bucket-cli-demo/

   ![EC2 Instance](../images/cli-upload.png)


- ### Now to access that html application , we need to assign some policy , lets add the required policy in ```policy.json```.

``` 
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::s3bucket-cli-demo/*"
    }
  ]
}
```
  ![EC2 Instance](../images/policy-json.png)

- ### Now , will Apply the bucket policy using the following command:

       aws s3api put-bucket-policy --bucket s3bucket-cli-demo --policy file://policy.json

![EC2 Instance](../images/add-policy.png)

- ### Lets , get back to AWS Console and see whether our bucket and file got uploaded .

![EC2 Instance](../images/cli-console.png)

- ### Open the file and access the ```Object URL``` .

![EC2 Instance](../images/CLI-ACCESS.png)

- ### You can see Html Student Application Running .

![EC2 Instance](../images/URL-CLI.png)


# POWERSHELL

 ## PowerShell Pre-requisites

 -      Install-Module -Name AWSPowerShell -Force -AllowClobber

 -      Import-Module AWSPowerShell

 ## Powershell Commands

 - ### Configure AWS credentials:

        Set-AWSCredential -AccessKey AKIA5YNPHZNC5UNR7HL7 -SecretKey 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 -StoreAs "default"

    ![EC2 Instance](../images/ps-cred.png)


- ### Create an S3 bucket:

        New-S3Bucket -BucketName s3bucket-ps-demo -Region us-east-1

    ![EC2 Instance](../images/ps-create.png)

- ### Upload a file to the S3 bucket:

        Write-S3Object -BucketName s3bucket-ps-demo -Key student.html -File student.html

    ![EC2 Instance](../images/ps-html.png)

- ### We need to add the policy which is already added under S3Bucket Folder just change the s3bucket name to ```s3bucket-ps-demo```.

    ![EC2 Instance](../images/ps-policy.json.png)

- ### Lets just Apply the bucket policy:

       aws s3api put-bucket-policy --bucket s3bucket-ps-demo --policy file://policy.json

    ![EC2 Instance](../images/ps-policy.png)

 - ### Lets , get back to AWS Console and see whether our bucket and file got uploaded .

![EC2 Instance](../images/ps-console.png)

- ### Open the file and access the ```Object URL``` .

![EC2 Instance](../images/ps-ACCESS.png)

- ### You can see Html Student Application Running .

![EC2 Instance](../images/URL-PS.png)  