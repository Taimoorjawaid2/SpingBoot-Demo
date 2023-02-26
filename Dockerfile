# Docker Build Stage

FROM openjdk:11
EXPOSE 8081
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} news-0.0.1.jar
ENTRYPOINT  ["java","-jar","/target/news-0.0.1.jar"]