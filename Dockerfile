FROM openjdk:11
FROM maven:3
RUN mkdir ./demodocker
COPY . ./demodocker
WORKDIR ./demodocker
CMD mvn clean install; java -jar /demodocker/target/demo-0.0.1-SNAPSHOT.jar
