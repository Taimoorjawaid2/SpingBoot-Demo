# Docker Build Stage

FROM openjdk:11
WORKDIR /opt
ENV PORT 8081
EXPOSE 8081
ADD target/demoapp.jar opt/demoapp.jar
ENTRYPOINT ["java","-jar","/demoapp.jar"]