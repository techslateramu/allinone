![TechSlate](../global/images/ts.png)

# To create AWS S3 Bucket, using ```AWS Console``` , ```AWS-CLI``` and  ```Powershell``` follow below steps :

## Pre-Requistes

- ### Make sure to Create a user in your aws console and have ```Access Key ID``` and ```Secret Access Key``` noted down in notepad.

## Process

# **AWS-Console**

- ### **Open the AWS-Console and search for S3 in the console , Start with giving ```Bucket Name```** .

  ![EC2 Instance](images/creates3.png)

- ### **Click on ``Create Bucket``** .

  ![EC2 Instance](images/CLICK.png)

- ### **Now you can see that S3 Bucket got created succefully ``s3bucket212``** .

  ![EC2 Instance](images/created.png)

- ### **Now if you want to add any files to it , you can click on ```upload``` .**

  ![EC2 Instance](images/upload.png)

- ### **Click on ``Add file.``**

  ![EC2 Instance](images/addfile.png)

- ### **We have taken a sample student app HTML file and added that to it**

  ![EC2 Instance](images/addfile.png)

- ### **it got uploaded**

  ![EC2 Instance](images/uploaded.png)

- ### **Now under properties in storage class select ``Standard`` and click on ``Upload``** .

  ![EC2 Instance](images/stand.png)

- ### **Uploaded Successfully.***

  ![EC2 Instance](images/upd.png)

- ### **Now come back to the ``s3bucket212`` as we need to assign certain permissions to it , Click on ``Permissions``***

  ![EC2 Instance](images/per.png)

- ### **Here in Block Pulic access , click on ```edit```.***

  ![EC2 Instance](images/edit.png)

- ### **Uncheck the Checkbox of it.**

  ![EC2 Instance](images/uncheck.png)

- ### **Click on ``Save Changes``.**

  ![EC2 Instance](images/save.png)

- ### **Scroll down and come to Bucket Policy , Click on ``Edit``.**

  ![EC2 Instance](images/buck-pol.png)

- ### **Click on Add New Statement.**

  ![EC2 Instance](images/policy.png)

- ### **Now make some changes to the policy as shown in below picture , just replacee resource with you resource name , as its placed above policy statement. Make sure to add ```/*``` to resource.**

  ![EC2 Instance](images/added.png)

- ### **Click on ```Save Changes```**

  ![EC2 Instance](images/savechanges.png)


- ### **Now , lets open the ``student.html``**

  ![EC2 Instance](images/last.png)


- ### **Now , click on the ```Object URL```**

  ![EC2 Instance](images/URL.png)

- ### **You can see student application Running Successfully**

  ![EC2 Instance](images/Stu-app.png)
