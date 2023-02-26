# Docker Build Stage

FROM openjdk:11
#WORKDIR /opt
#ENV PORT 8081
#EXPOSE 8081
#ADD target/demo.jar demo.jar
#ENTRYPOINT ["java","-jar","/demo.jar"]
EXPOSE 8090
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} demo.jar
ENTRYPOINT  ["java","-jar","/demo.jar"]