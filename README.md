# Quick guide
# If you have docker installed in your system:
1. build and run docker image by running:
```
docker-compose up --build
```
2. if it is already build, run it without `--build` flag:
```
docker-compose up
```
3. press `ctrl + c` to stop the container. 
4. if you ran the container silently with command:
```
docker-compose up -d
```
you cannot see the output. Then just type
```
docker-compose stop <container-name>
```
to stop the container or 
```
docker-compose down
```
to shut it down and remove it.

Running container can be accessed on localhost (`localhost` or `127.0.0.1:80`).
Moreover, there is a tunnelling to the public internet using ngrok. Take a look at readme.md file.

## More information
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
Create a folder named `workspace` in the main folder (`dockerized-inception-app`). Copy the downloaded .jar file with inception and rename it to `Inception.jar`

## Build docker image from Dockerfile
```
docker build -f Dockerfile --tag inception_box .
```

## Run the inception contenerized app using docker-compose
In the directory *dockerized-inception-app* containing folder *workdpace* run command:
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
docker exec -it dockerized-inception-app_inception_box_1
```

Name of the container can differ depending on the name of the folder. For example if the folder has name "dockerized-inception-app" then name of the container will be "dockerized-inception-app_inception_box_1". If the folder has name "strawberries" the container will be "strawberries_inception_box_1".

All the configuration files of the app are stored in folder .inception (you can ls that folder using la or ls -a) which is located in workspace folder (is mapped as home directory of the container). 

To stop the container press ctrl+v in the interactive console or use command 
```
docker stop dockerized-inception-app_inception_box_1
```
in the terminal. 

Users are:
- admin with password admin
- useruser with password useruser
