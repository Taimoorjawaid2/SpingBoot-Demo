# Docker Build Stage

FROM openjdk:11
WORKDIR /opt
ENV PORT 8081
EXPOSE 8081
ADD target/news.jar opt/news.jar
ENTRYPOINT ["java","-jar","/news.jar"]