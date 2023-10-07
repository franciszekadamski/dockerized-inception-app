FROM ubuntu:22.04
 
RUN apt-get update
RUN apt install -y sudo wget 
RUN apt install -y libx11-6 libgl1 libglib2.0-0

# RUN adduser --disabled-password --uid 1000 --gecos '' ubuntu
# RUN adduser ubuntu
# RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# USER ubuntu
# WORKDIR /home/ubuntu

RUN apt update 
RUN apt install -y micro vim

RUN apt install -y openjdk-17-jdk

RUN wget https://github.com/inception-project/inception/releases/download/inception-29.0/inception-app-webapp-29.0-standalone.jar

RUN wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz
RUN tar xvzf ngrok-v3-stable-linux-amd64.tgz -C /usr/local/bin

RUN ngrok config add-authtoken 2WQoz8pUbdsyG67fvHp2IS5ea2O_8a1r3Vw4Zngkr1Zh1woro

EXPOSE 8080/tcp
