![TechSlate](../../global/images/ts.png)

# <span style="color: gold;"> Introduction

- What is ``Amazon S3Bucket`` ?

    Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance. Customers of all sizes and industries can use Amazon S3 to store and protect any amount of data for a range of use cases, such as data lakes, websites, mobile applications, backup and restore, archive, enterprise applications, IoT devices, and big data analytics.

## To create AWS S3 Bucket, using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

1.[AWS Console](#aws-console)

2.[AWS-CLI](#aws-cli)

3.[Powershell](#powershell)

# <span style="color: gold;">Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

# <span style="color: gold;">Process

## <span style="color: pink;">**AWS-Console**

| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Open the AWS Console and search for S3. Start by giving a ``Bucket Name``.** | ![Step 1](../images/creates3.png) |
| 2. | **Click on ``Create Bucket``.** | ![Step 2](../images/CLICK.png) |
| 3. | **Confirm successful creation of the S3 Bucket named ``s3bucket212``.** | ![Step 3](../images/created.png) |
| 4. | **To add files, click on ``Upload``**. | ![Step 4](../images/upload.png) |
| 5. | **Click on ``Add file`` and upload a sample student app HTML file.** | ![Step 5](../images/addfile.png) |
| 6. | **View the successful upload of the file.** | ![Step 6](../images/uploaded.png) |
| 7. | **Under properties, select **Standard** for storage class and click **Upload**. | ![Step 7](../images/stand.png) |
| 8. | **Confirm successful upload.** | ![Step 8](../images/upd.png) |
| 9. | **Navigate back to the ``s3bucket212`` and click on ``Permissions``.** | ![Step 9](../images/per.png) |
| 10. |**In Block Public Access, click ``Edit``, uncheck the checkbox, and click ``Save Changes``.** | ![Step 10](../images/save.png) |
| 11. | **Scroll down to Bucket Policy, click on ``Edit``, and add a new statement.** | ![Step 11](../images/buck-pol.png) |
| 12. | **Configure the policy as shown in the screenshot, replacing the resource name. Click ``Save Changes``.** | ![Step 12](../images/savechanges.png) |
| 13. | **Open the ``student.html`` file.** | ![Step 13](../images/last.png) |
| 14. | **Click on the ``Object URL`` to see the student application running successfully.** | ![Step 14](../images/URL.png) |
| 15. | **Confirm the successful running of the student application.** | ![Step 15](../images/Stu-app.png) |

***
<br>


## <span style="color: pink;">**AWS-CLI**

| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Open the command line of your choice and run following command with provided **Access Key ID** and **Secret Access Key**** <br> ``aws configure`` | ![Step 1](../images/aws-conf.png) |
| 2. | **Lets run the following command to create S3bucket using AWS-Cli Command.** <br>``aws s3api create-bucket --bucket s3bucket-cli-demo --region us-east-1``| ![Step 2](../images/s3-cli.png) |
| 3. | **Now as S3Bucket got created , its time for us to upload some file to it , lets get into the proper path of our aws folder where html file their , and run following command to upload file into the bucket. Html file is placed under ```aws/S3Bucket ```folder** | ![Step 3](../images/stu.png) |
| 4. | ``aws s3 cp student.html s3://s3bucket-cli-demo/``| ![Step 3](../images/cli-upload.png) |
| 5. | **Now to access that html application , we need to assign some policy , lets add the required policy in ```policy.json```.**| ![Step 5](../images/policy-json.png) |
| 6. | **Now , will Apply the bucket policy using the following command:** <br> ``aws s3api put-bucket-policy --bucket s3bucket-cli-demo --policy file://policy.json``| ![Step 6](../images/add-policy.png)|
| 7. | **Lets , get back to AWS Console and see whether our bucket and file got uploaded.**| ![Step 7](../images/cli-console.png) |
| 8. | **Open the file and access the ```Object URL```**| ![Step 8](../images/CLI-ACCESS.png) |
| 9. | **You can see Html Student Application Running .**| ![step 9](../images/URL-CLI.png) |







## <span style="color: pink;"> **POWERSHELL**

 ## PowerShell Pre-requisites

 -      Install-Module -Name AWSPowerShell -Force -AllowClobber

 -      Import-Module AWSPowerShell


| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Configure AWS credentials:** <br> ``Set-AWSCredential -AccessKey AKIA5YNPHZNC5UNR7HL7 -SecretKey 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 -StoreAs "default"`` | ![Step 1](../images/ps-cred.png) |
| 2. | **Create an S3 bucket:** <br>`` New-S3Bucket -BucketName s3bucket-ps-demo -Region us-east-1``| ![Step 2](../images/ps-create.png) |
| 3. | **Upload a file to the S3 bucket:**  <br> ``Write-S3Object -BucketName s3bucket-ps-demo -Key student.html -File student.html``| ![Step 3](../images/ps-html.png) |
| 4. | **We need to add the policy which is already added under S3Bucket Folder just change the s3bucket name to ```s3bucket-ps-demo```.**| ![Step 3](../images/ps-policy.json.png) |
| 5. | **Lets just Apply the bucket policy:** <br> ``aws s3api put-bucket-policy --bucket s3bucket-ps-demo --policy file://policy.json``| ![Step 5](../images/ps-policy.png) |
| 6. | **Lets , get back to AWS Console and see whether our bucket and file got uploaded .**| ![Step 6](../images/ps-console.png)|
| 7. | **Open the file and access the ```Object URL```**| ![Step 8](../images/ps-ACCESS.png) |
| 8. | **You can see Html Student Application Running .**| ![step 9](../images/URL-PS.png) |

 