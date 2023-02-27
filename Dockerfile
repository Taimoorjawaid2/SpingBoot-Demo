# Docker Build Stage

FROM openjdk:11
WORKDIR /opt
ENV PORT 8081
EXPOSE 8081
ADD target/demoapp-2.3.2.RELEASE.jar opt/demoapp-2.3.2.RELEASE.jar
ENTRYPOINT ["java","-jar","/demoapp-2.3.2.RELEASE.jar"]