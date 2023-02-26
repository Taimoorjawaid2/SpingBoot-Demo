# Docker Build Stage

FROM openjdk:11
EXPOSE 8081
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} news.jar
ENTRYPOINT  ["java","-jar","/news.jar"]