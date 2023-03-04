![TechSlate](../../global/images/ts.png)

# Introduction 

# Running Images

## Run nginx Image
To run an nginx container using docker run, you can use the following command:

```
docker run --name my-nginx -p 80:80 -d nginx
```

This will start a new container with the name "my-nginx", and bind the container's port 80 to the host machine's port 80. The -d flag runs the container in detached mode, which means that it will run in the background.


If you want to customize the configuration of the nginx server, you can mount a configuration file from the host machine to the container using the -v flag. For example:


```
docker run --name my-nginx -p 80:80 -v /path/to/nginx.conf:/etc/nginx/nginx.conf:ro -d nginx
```
This will mount the nginx.conf file from the host machine to the /etc/nginx/ directory in the container, and set it as the configuration file for the nginx server. The :ro flag specifies that the file should be mounted read-only.

<hr>

## Run MySQL Image
To run a MySQL container using docker run, you can use the following command:

```
docker run --name my-mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=my-secret-pw -d mysql:latest
```
This will start a new container with the name "my-mysql", and set the root password for the MySQL server to "my-secret-pw". The -d flag runs the container in detached mode, which means that it will run in the background.

If you want to persist the data stored in the MySQL database, you can mount a host directory as the MySQL data directory using the -v flag. For example:


```
docker run --name my-mysql -e MYSQL_ROOT_PASSWORD=my-secret-pw -v /path/to/mysql-data:/var/lib/mysql -d mysql:latest
```
This will mount the host directory /path/to/mysql-data to the /var/lib/mysql directory in the container, which is the default data directory for MySQL.

<hr>

## Run MongoDB Image
To run a MongoDB container using docker run, you can use the following command:

```
docker run --name my-mongo -p 27017:27017 -d mongo:latest
```

This will start a new container with the name "my-mongo", and run the latest version of MongoDB. The -d flag runs the container in detached mode, which means that it will run in the background.

```
docker run --name my-mongo -v /path/to/mongo-data:/data/db -d mongo:latest
```

This will mount the host directory /path/to/mongo-data to the /data/db directory in the container, which is the default data directory for MongoDB.
<hr>

## Run Alpine Image
To run an Alpine Linux container using docker run, you can use the following command:

```
docker run --name my-alpine -it alpine:latest /bin/sh
```

This will start a new container with the name "my-alpine", and run the latest version of Alpine Linux. The -it flag runs the container in interactive mode, which means that you will be able to interact with the command prompt inside the container. The /bin/sh command will start a shell inside the container.

If you want to run an infinite loop inside the container, you can use the while loop in the shell. For example:

```
docker run --name my-alpine -it alpine:latest /bin/sh -c "while true; do echo 'Hello, world!'; sleep 1; done"
```

## Docker Run with Options Exmple

```
docker run --name mycontainer -d -p 8080:80 -v /host/data:/container/data -e ENV_VAR=value --restart=always --log-opt max-size=10m --network=mynetwork --link mydb:db -w /container/workdir image_name command_to_run
```

- --name: assigns a name to the container
- -d: runs the container in detached mode (in the background)
- -p: maps the host's port 8080 to the container's port 80
- -v: mounts the host's /host/data directory to the container's /container/data directory
- -e: sets the value of an environment variable ENV_VAR inside the container
- --restart: defines the container's restart policy (in this case, always)
- --log-opt: sets the maximum size of the log file to 10 MB
- --network: specifies the network to connect the container to (must be pre-created)
- --link: links the container to another container (in this case, "mydb") and creates an alias "db" for it
- -w: sets the working directory inside the container
- image_name: the name of the image to use for the container
- command_to_run: command to run when the container starts up
