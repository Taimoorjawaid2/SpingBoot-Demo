# Docker Build Stage

FROM openjdk:11
EXPOSE 8081
ARG JAR_FILE=target/*.war
COPY ${JAR_FILE} news-0.0.1.war
ENTRYPOINT  ["java","-jar","/target/news-0.0.1.war"]