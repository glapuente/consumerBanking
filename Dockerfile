FROM ubuntu:latest
WORKDIR /usr/src
COPY src/main /usr/src/project/main
COPY src/test /usr/src/project/test
COPY pom.xml /usr/src/project
RUN apt-get update && apt-get -y install maven
WORKDIR /usr/src/project
CMD mvn package
CMD java -cp target/consumerBanking-1.0-SNAPSHOT.jar App
CMD date > fecha.txt