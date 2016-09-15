FROM ubuntu:latest
WORKDIR /usr/src
COPY src/main /usr/src/main
COPY src/test /usr/src/test
RUN apt-get update && apt-get -y install maven
CMD mvn package
CMD java -cp target/consumerBanking-1.0-SNAPSHOT.jar App
CMD date > fecha.txt