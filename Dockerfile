FROM ubuntu:latest
WORKDIR /usr/src
COPY main /usr/src/main
COPY test /usr/src/test
RUN apt-get update && apt-get install maven
CMD mvn package
CMD java -cp target/consumerBanking-1.0-SNAPSHOT.jar App