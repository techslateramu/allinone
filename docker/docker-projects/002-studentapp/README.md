

# DockerCompose

This is a Docker Compose file that defines three services: studentfrontend, studentbackend, and db.

The studentfrontend service is using the student-frontend:2.0 image and maps port 80 of the container to port 9200 on the host.

The studentbackend service is using the student-backend:2.0 image and maps port 9300 of the container to port 9300 on the host. This service also depends on the db service, meaning it will not start until the db service is up and running.

The db service is using the mongo image and maps port 27017 of the container to port 27017 on the host.

These services together provide a complete setup for a student application with a frontend, a backend, and a database. The studentfrontend communicates with the studentbackend, which communicates with the mongo database to store and retrieve student data.