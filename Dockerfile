# Docker Build Stage

FROM openjdk:11
WORKDIR /opt
ENV PORT 8081
EXPOSE 8081
ADD target/news-0.0.1.jar opt/news-0.0.1.jar
ENTRYPOINT ["java","-jar","/news-0.0.1.jar"]