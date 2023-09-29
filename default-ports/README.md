![TechSlate](../global/images/ts.png)

## *This page lists default port numbers associated with various Docker images.*


# Introduction 

A **Default port** number is a predefined numeric value that is associated with a specific network service or protocol. It serves as a standardized entry point for communication between devices or applications over a network, such as the internet. Default port numbers are used to ensure that different software components can communicate with each other effectively without needing to negotiate port numbers each time.

# Details and Links of the Sections 

|DockerImage|   Default Port      |Description|
|-------|-----------|------|
|**Nginx**|**Port 80 (HTTP) and Port 443 (HTTPS)** |Nginx uses **Port 80** for handling unencrypted HTTP traffic, and **Port 443** for secure, encrypted HTTPS traffic. Port 80 is the default for standard web browsing, while Port 443 is used to ensure data privacy and security during web communication.|   
|**MySQL**|**Port 3306**|MySQL uses **Port 3306** as its default communication channel. This port facilitates connections between MySQL client applications and the MySQL server, allowing for database queries and data retrieval. |
|**PostgreSQL**|**Port 5432**|PostgreSQL, a popular open-source relational database system, uses **Port 5432** as its default communication port. Applications and clients connect to this port to interact with PostgreSQL databases over a network. It's essential to configure firewalls and network settings to allow traffic on **Port 5432** for PostgreSQL to function properly.|
|**Redis**|**Port 6379**|Redis, a popular in-memory data store, uses **Port 6379** as its default port for client-server communication. It allows applications to connect and store/retrieve data, making it a widely-used choice for caching and real-time data processing. |
|**MongoDB**|**Port 27017**| **Port 27017** is the default network port used by MongoDB, a popular NoSQL database system, for client-server communication. It serves as the entry point for applications to connect and interact with the MongoDB database. |
|**SSH**|**Port 22**|SSH (Secure Shell) uses **Port 22** as its default communication channel on a network. It provides secure remote access and command-line control over a computer or server. **Port 22** is essential for establishing encrypted and authenticated connections for secure remote administration.|
|**Jenkins**|**Port 8080**|Jenkins, a popular automation server, uses **Port 8080** as its default communication channel. This port is where the Jenkins web interface is typically accessible, allowing users to manage and configure automation pipelines and jobs through a web browser. Administrators can customize this port if necessary.|
|**SonarQube**|**HTTP Port 9000**| SonarQube, a code quality and security analysis tool, utilizes **Port 9000** as its default HTTP port. This port is where the SonarQube web interface is accessible, enabling users to perform code analysis and review reports via a web browser. Administrators can modify this port as needed. |