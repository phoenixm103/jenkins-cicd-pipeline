FROM openjdk:8-jdk-alpine as build
WORKDIR /app
COPY pom.xml .
COPY src src
COPY target target
FROM openjdk:8-jdk-alpine
EXPOSE 6088
WORKDIR /app 
COPY target/jenkins-cicd-pipeline.jar target/jenkins-cicd-pipeline.jar
ENTRYPOINT [ "java", "-jar", "jenkins-cicd-pipeline.jar" ]
