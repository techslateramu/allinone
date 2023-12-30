![TechSlate](../../../../global/images/ts.png)

# <span style="color: gold;"> Introduction

- What is  ``PostgreSQL Database`` ?

    ``PostgreSQL``, commonly pronounced “Post-GRES,” is an open source database that has a strong reputation for its reliability, flexibility, and support of open technical standards. Unlike other RDMBS (Relational Database Management Systems), PostgreSQL (link resides outside ibm.com) supports both non-relational and relational data types. This makes it one of the most compliant, stable, and mature relational databases available today.

## <span style="color: lightblue;"> To create Amazon RDS - MYSQL Database , using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

1.[AWS Console](#aws-console)

2.[AWS-CLI](#aws-cli)

3.[Powershell](#powershell)

# <span style="color: gold;">Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

# <span style="color: gold;">Process

## <span style="color: pink;">**AWS-Console**


| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Click on ``Create Database``.** | ![Step 1](../../../images/cre-pos.png) |
| 2. | **Select creation method as ``Standard Create``. And Engine type as ``PostgreSQL``** | ![Step 2](../../../images/post.png) |
| 3. | **Scroll down to Templates and select ``Free Tier``.** | ![Step 3](../../../images/temp-post.png) |
| 4. | **Moving to settings section , give proper database name , along with  ``Master Username``, and ``Master Password``**. | ![Step 4](../../../images/sett-post.png) |
| 5. | **Keep the further things as default ,Pause at connectivity section and choose Public Access as ``Yes``.** | ![Step 5](../../../images/pa.png) |
| 6. | **Keeping rest of them as default , scroll down to the end of the page and click on ``Create Database``.** | ![Step 6](../../../images/create-data.png) |
| 7. | **It will take some time to create database , Lets Wait.**| ![Step 7](../../../images/wait-post.png) |
| 8. | **The Database got creared successfully.Open your database and copy the ``Endpoint``** | ![Step 8](../../../images/db-postgres.png) |
| 10.|**Now open the Dbeaver . Click on ``Connect`` and select the ``PostgreSQL Database``.** | ![Step 10](../../../images/dbeaver-postgres.png) |
| 11.|**Now in the Server host box , give your ``endpoint`` .Give a ``Database`` name , and also youre ``Username`` and ``Password`` and  Click on ``Test Connection``.** | ![Step 10](../../../images/dbeaver-host-post.png) |
| 12.|**It got connected Successfully.** | ![Step 10](../../../images/Connected-postgres.png) |

***
<br>


## <span style="color: pink;">**AWS-CLI**


| Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Open the command line of your choice and run following command with provided **Access Key ID** and **Secret Access Key**** <br> ``aws configure`` | ![Step 1](../../../images/aws-conf.png) |
| 2. | **Lets run the following command to create RDS - MySQL Datbase using AWS-Cli Command.** <br>``aws rds create-db-instance --db-instance-identifier my-test-rds-postgresql-instance --db-instance-class db.t3.micro --engine postgres  --master-username myusername  --master-user-password 'password123' --allocated-storage 5``| ![Step 2](../../../images/cre-data-ps.png) |
| 3. | **Lets go to the ``AWS CONSOLE`` and check if database got created. It got created successfully , lets copy the ``endpoint``.** | ![Step 3](../../../images/endpoint-ps.png) |
| 4. | **Now to connect to the RDS - MySQL Database , lets run the following command.make sure to replace the endpoint with yours.** <br>``psql -h my-test-rds-postgresql-instance.cv6ik6owcqfj.us-east-1.rds.amazonaws.com -P 5432 -u myusername -p`` | ![Step 3](../../../images/.png) |


## <span style="color: pink;"> **POWERSHELL**

 ## PowerShell Pre-requisites

 -      Install-Module -Name AWSPowerShell -Force -AllowClobber

 -      Import-Module AWSPowerShell


 | Step | Description | Screenshot |
|------|-------------|------------|
| 1. | **Configure AWS credentials:** <br> ``Initialize-AWSDefaultConfiguration -AccessKey AKIAZAWPSDE***** -SecretKey "your-seceret-key"`` | ![Step 1](../../../images/ps-cred.png) |
| 2. | **Lets run the following command to create RDS - MySQL Datbase using PowerShell Command.** <br>`` New-RDSDBInstance -DBInstanceIdentifier my-ps-rds-postgresql-instance -DBInstanceClass db.t3.micro -Engine postgres -MasterUsername myusername -MasterUserPassword password123 -AllocatedStorage 5``| ![Step 2](../../../images/ps-create-post.png) |
| 3. | **Lets go to the ``AWS CONSOLE`` and check if database got created. It got created successfully , lets copy the ``endpoint``. .**| ![Step 3](../../../images/ps-post-end.png) |