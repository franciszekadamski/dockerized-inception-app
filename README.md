# Quick guide

## Configure system for docker container
On Ubuntu:
```
sudo apt update
sudo apt install docker.io
sudo apt install docker-compose
```
or install docker engine.
In case of problems try:
```
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
```

Basic test:
```
docker run hello-world
```

On Windows install docker desktop.

## Download .jar file with inception 
Create a folder named `workspace`. Copy the downloaded .jar file with inception and rename it to `Inception.jar`

## Build docker image from Dockerfile
```
docker build -f Dockerfile.inception --tag inception_box 
```

## Run the inception contenerized app using docker-compose
In the directory *inception* containing folder *workdpace* run command:
```
docker-compose up
```
or, if there are more than one docker-compose.yml files:
```
docker-compose -f docker-compose-<specific name>.yml
```

Application runs on https://127.0.0.1:80 which is equal to localhost or 127.0.0.1

When container is running you can log into bash shell using command:
```
docker exec -it inception_inception_box_1
```

Name of the container can differ depending on the name of the folder. For example if the folder has name "inception" then name of the container will be "inception_inception_box_1". If the folder has name "strawberries" the container will be "strawberries_inception_box_1".

All the configuration files of the app are stored in folder .inception (you can ls that folder using la or ls -a) which is located in workspace which is mapped as home directory of the container. 

To stop the container press ctrl+v in the interactive console or use command 
```
docker stop inception_inception_box_1
```
in the terminal. 

Users are:
- admin with password admin
- useruser with password useruser
