FROM jenkins/jenkins:2.401.3-lts-jdk11

# set the user to root
USER root

# Set working directory
WORKDIR /home/ubuntu

# update and upgrade apt package
RUN apt -y update && apt -y upgrade

# install nano editor
#RUN apt install nano

# Copy info.txt from the build context to the image
COPY info.txt /home/ubuntu/
