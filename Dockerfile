FROM ubuntu:14.04
RUN apt-get update && apt-get install -y git && apt-get install -y whois 
RUN git clone https://github.com/Jagrat-Gupta/docker_exercise_set4.git
RUN mkdir -p /Folder_1/Folder_1_1/Folder_1_1_1 
RUN cp /docker_exercise_set4/create_user /Folder_1/Folder_1_1/Folder_1_1_1/ 
WORKDIR /Folder_1/Folder_1_1/Folder_1_1_1/
ENV username=user1
ENV password=pass1
ENTRYPOINT ./create_user $username $password

