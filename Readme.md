# PHP Template

A docker container for my PHP projects

## Getting Started

This template is for development. It provides a PHP environment in a container. What is functional:
- PHP 7.4
- Xdebug
- Git
- Compose
- pdo_mysql extension
- mysqli extension

### Prerequisites

- Docker and Docker-Compose
- Git

### Installing

- Clone this repository
- With your bash, go to the cloned directory and type :

```
docker-compose up --build
```
When the container is started, launch a shell in this container :
```
docker exec -ti container_name /bin/bash
```
You will then be located in the / workspaces / app / directory. You will find there all the files located in your host directory.

You can start the internal PHP web server:
```
php -S 0.0.0.0:80
```

You can work in the cloned repository. You are free to change the name of the directory, change the name of the container in the docker-compose.yml file. In this case, remember to rebuild your image.

If you want to clone another project first, then all you need to do is drag the Dockerfile and docker-compose.yml into that project and perform a build as we did above.

## Authors

* **Matthias LEROUX**

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details

