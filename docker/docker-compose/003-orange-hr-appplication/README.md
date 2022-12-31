# **Creating Orange HRM using Docker Compose file.**

## Table of Contents :

1.[Introduction](#**<Introduction>**)

2.[Prerequisites](#**<Pre-requisites>**)

2.[How to create Orange HRM using Docker-compose](#**<how-to-Create-Orange-HRM-with-Docker-compose>**)


## **Introduction**

### **What is Orange HRM ?**

OrangeHRM is a popular open-source HR management system for startups, small and medium-sized businesses, and large enterprises. This solution is utilized by thousands of companies across the globe including top names such as Duke University, RedHat, and PricewaterhouseCoopers.

OrangeHRM provides useful modules for recruitment, benefits, time and attendance, leave management, employee self service, personnel information management, and more. All these modules are combined in single platform allowing you to re-engineer and align your HR processes in line with your company goals. In addition, you can also try the OrangeHRM Live SaaS solution for your HR management needs.

OrangeHRM is free for small companies, while larger businesses with greater needs can opt to purchase hosted services, customizations, add-ons, and support. They can get a custom quote for their requirements.

OrangeHRM was founded in 2005 by brothers Sujee and Dinesh Saparamadu. The company is headquartered in the US and has subsidiaries and partners in Asia and Europe.

### **Overview of OrangeHRM Features**

* ### System Administration and User Roles
* ### Personal Information Management
* ### Leave/Time Off
* ### Time and Attendance Management
* ### Performance Tracking
* ### Recruitment
* ### Travel and Expense Tracker
* ### Disciplinary Tracking
* ### OrangeApp
* ### Document Manager
* ### Insurance Benefits
* ### Employment Compliance
* ### Insurance Benefits
* ### Document Manager


### **Overview of OrangeHRM Benefits**

* ### OrangeHRM is a flexible and scalable HR management solution designed for the needs of companies of all sizes. The application is user friendly, globally accessible, and affordable. Businesses can benefit from this customizable platform to manage all aspects of the whole employment lifecycle.

* ### OrangeHRM’s full suite of modules for human capital management include core HR, benefits administration, absence management, performance reviews, candidate recruiting, time and attendance, and more. This application can be deployed both in the cloud or on-premise. It can be utilized by companies in multiple industries including education, insurance, pharma, banking, real estate, and others. Each company can customize the app’s features for their unqiue needs and business practices.

* ### What makes OrangeHRM stand apart from the crowd is its unqiue open source nature. The vendor gets feedback from community members and uses it to continuously improve the solution’s features to provide a cutting-edge platform for businesses of all sizes.

* ### OrangeHRM’s interfaces are user friendly for both administrators as well as employees who can use the self-service module. In addition, businesses can benefit from professional and knowledgeable customer support. The SaaS solution is ideal for companies that wish to avoid the hassles of costly hardware and installation.

* ### The major benefit for small and medium-sized companies is the solution is free because it is an open-source system. The total cost of ownership is low even for the OrangeHRM Live SaaS solution.

* ### Finally, companies can utilize the tailored training workshops, add-ons, and full customizations to amend the system at all levels from source code modifications to email notifications to theme changes.

### **What is Docker Compose?** 
Docker compose is a tool developed to define and share multi-container applications. With docker compose, you can create a YAML file for defining services within a single command. This command can either build up or tear down your entire build. 


***

## **Pre-requisites**
### **To create Orange HRM using Docker-compose, you will need to have the following prerequisites installed and configured on your machine:**

* **Docker:** Docker is a containerization platform that allows you to run applications in lightweight, isolated environments called containers. You will need to have Docker installed on your machine to use docker-compose.

* **Docker Compose:** Docker Compose is a tool for defining and running multi-container Docker applications. You will use Docker Compose to set up and run the OrangeHRM and Mysql containers.

* **A text editor:** You will need a text editor to create and edit the docker-compose.yml file that defines the configuration for your OrangeHRM and Mysql containers. Some popular text editors include Visual Studio Code, Sublime Text, and Atom.

* **Create a new directory for your Orange HRM project and navigate to it.**

* **Create a file named "docker-compose.yml" in the project directory**

***

# **How to Create Orange HRM with Docker-compose?**
Now, We will create a simple **docker-compose.yml** file and store the code in it.

### **1. Open your Visual Studio Code.**
![Visual studio page](images/vscodepage.png)

***

### **2. Create a folder , and name it by your choice.**
**To create a Folder run the following command**

`mkdir <folder-name>`

![Create a Folder](images/openfolder.png)
***

### **3. Create docker-compose.yml .**

```
version: '3'
services:
  orangehrm:
    image: orangehrm/orangehrm
    ports:
      - 80:80
    environment:
      MYSQL_DATABASE: orangehrm
      MYSQL_USER: orangehrm
      MYSQL_PASSWORD: password
      MYSQL_ROOT_PASSWORD: password
    depends_on:
      - db
  db:
    image: mysql:5.7
    ports:
      - 3306:3306
    environment:
      MYSQL_DATABASE: orangehrm
      MYSQL_USER: orangehrm
      MYSQL_PASSWORD: password
      MYSQL_ROOT_PASSWORD: password
    volumes:
      - orangehrm-db:/var/lib/mysql

volumes:
  orangehrm-db:

```
***
### **4 . Now execute the compose file using Docker compose command:**

**`docker-compose up`**

![docker-compose up](images/orangehrcomposeup.png)
***
### **5. List the running containers.** 

docker ps command to list the running containers, as we can see both OrangeHRM and Mysql  containers are running.

**`docker ps`**

![docker ps](images/dockerps.png)
***

### **6. Command to check the docker compose logs .**

**`docker-compose logs`**

![docker-compose logs](images/dockerlogs.png)

**Now open in your browser http://localhost:80 .**
***

### **7. Now you should see OrangeHRM Welcome page on your screen**

![Orange hrm](images/mainpage.png)

### **8. Proceed further by accepting the terms in the License Agreement**

![Orange hrm](images/license.png)

### **9.Fill the Database Configuration page , with correct credentials**

![Orange hrm](images/databaseconfig.png)

### **10.Click on Next.**

![Orange hrm](images/Systemcheck.png)

### **11.Fill in your organization details here.**

![Orange hrm](images/Instancecreation.png)


### **12. Select the name, email address, username & password to create the admin user for your OrangeHRM.**

![Orange hrm](images/adminuser.png)

### **13. Click on Install for installing OrangeHRM**

![Orange hrm](images/confirmation.png)

### **14. Click on Next**

![Orange hrm](images/Installation.png)

### **15.Successfully installed OrangeHRM and you can see the dashboard appearing on your screen.**

![Orange hrm](images/Dashboard.png)

### **16.Lets create one user and try to connect with Database Tool.**

![Orange hrm](images/user.png)

### **17. Fill in the Details.**

![Orange hrm](images/adduser.png)

### **18. Users are been created , as you can see under the record.**

![Orange hrm](images/usercreated.png)

### **19. Now will connect to one of the database tool and see the record there. Lets take Dbeaver as a Database Tool.**

![Orange hrm](images/usercreated.png)

### **20. TO download Dbeaver software , please click on this link (https://dbeaver.io/download/)**

![Orange hrm](images/dbeaverdownload.png)

### **21. Once you are done with installation, when you open the dbeaver , you can see the main page..First create a project under that.**

![Orange hrm](images/dbeaverproject.png)

### **22. Once you create project. Select your project , click on Databse on top bar and select New Databse Connection.**

![Orange hrm](images/connection.png)

### **23.Select the Database which you want to connect with. In this case , its Mysql**

![Orange hrm](images/selectdatabse.png)

### **24.Enter the Username and password of your database. Click on Test Connection**

![Orange hrm](images/connectdatabse.png)

### **25.Succesfully connected to the Database**

![Orange hrm](images/finished.png)

### **26.Click on your Database and you can see Tables and number of things are listed down**

![Orange hrm](images/list.png)


### **27.As we have created users in the application previously.. lets check it here !**

![Orange hrm](images/list.png)

### **28.Users which are created can be seen here. **

![Orange hrm](images/usersondatabse.png)
