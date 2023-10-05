FROM ubuntu:22.04
 
RUN apt-get update
# RUN apt-get upgrade 
# RUN apt install -y apt-utils 
RUN apt install -y sudo wget 
RUN apt install -y libx11-6 libgl1 libglib2.0-0

RUN adduser --disabled-password --uid 1000 --gecos '' ubuntu
RUN adduser ubuntu sudo 
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER ubuntu
WORKDIR /home/ubuntu

RUN sudo apt update 
RUN sudo apt install -y micro 

RUN sudo apt install -y openjdk-17-jdk

RUN wget https://github.com/inception-project/inception/releases/download/inception-29.0/inception-app-webapp-29.0-standalone.jar

EXPOSE 8080/tcp

CMD ["java", "-jar", "/home/ubuntu/inception-app-webapp-29.0-standalone.jar"]
