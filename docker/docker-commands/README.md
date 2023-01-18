![TechSlate](../../global/images/ts.png)

# Introduction 
Docker Commands

<ol>
  <li>
    <code>docker run</code> - Run a command in a new container
    <pre>
$ docker run ubuntu:18.04 echo "Hello from Ubuntu"
Hello from Ubuntu
    </pre>
  </li>
  <li>
    <code>docker start</code> - Start one or more stopped containers
    <pre>
$ docker start my_container
    </pre>
  </li>
  <li>
    <code>docker stop</code> - Stop one or more running containers
    <pre>
$ docker stop my_container
    </pre>
  </li>
  <li>
    <code>docker build</code> - Build an image from a Dockerfile
    <pre>
$ docker build -t my_image .
    </pre>
  </li>
  <li>
    <code>docker pull</code> - Pull an image or a repository from a registry
    <pre>
$ docker pull ubuntu:18.04
    </pre>
  </li>
  <li>
    <code>docker push</code> - Push an image or a repository to a registry
    <pre>
$ docker push my_image
    </pre>
  </li>
  <li>
    <code>docker exec</code> - Run a command in a running container
    <pre>
$ docker exec my_container ls /
    </pre>
  </li>
  <li>
    <code>docker export</code> - Export a container's filesystem as a tar archive
    <pre>
$ docker export my_container > my_container.tar
    </pre>
  </li>
  <li>
    <code>docker import</code> - Import the contents of a tar archive as a filesystem image
    <pre>
$ docker import my_image.tar my_image
    </pre>
  </li>
  <li>
    <code>docker login</code> - Log in to a registry
    <pre>
$ docker login
    </pre>
  </li>
  <li>
    <code>docker logout</code> - Log out from a registry
    <pre>
$ docker logout
    </pre>
  </li>
  <li>
    <code>docker logs</code> - Fetch the logs of a container
    <pre>
$ docker logs my_container
    </pre>
  </li>
  <li>
    <code>docker ps</code> - List containers
    <pre>
$ docker ps
    </pre>
  </li>
  <li>
    <code>docker inspect</code> - Inspect information about a container or image
    <pre>
$ docker inspect my_container
    </pre>
  </li>
  <li>
    <code>docker stats</code> - Display a live stream of container(s) resource usage statistics
    <pre>
$ docker stats my_container
    </pre>
  </li>
  <li>
    <code>docker top</code> - Display the running processes of a container
    <pre>
$ docker top my_container
    </pre>
 
