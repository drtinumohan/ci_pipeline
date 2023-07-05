FROM ubuntu:20.04

RUN apt-get update && apt-get install -y gnupg2 curl
RUN apt-get install curl -y
RUN curl -fsSL http://pkg.jenkins.io/debian/jenkins.io-2023.key | tee /usr/share/keyrings/jenkins-keyring.asc > /dev/null
RUN echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] http://pkg.jenkins.io/debian binary/ | tee /etc/apt/sources.list.d/jenkins.list > /dev/null

#RUN echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.gpg] http://pkg.jenkins.io/debian-stable binary/" | tee /etc/apt/sources.list.d/jenkins.list

RUN apt-get update && apt-get install -y openjdk-11-jdk maven jenkins

RUN apt-get install git -y

CMD service jenkins start && tail -f /dev/null



