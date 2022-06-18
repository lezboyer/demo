FROM openjdk:11
FROM maven:3
RUN mkdir ./demodocker
COPY . ./demodocker
WORKDIR ./demodocker
CMD mvn clean install; java -jar target/mvn-example-1.0-SNAPSHOT.jar
