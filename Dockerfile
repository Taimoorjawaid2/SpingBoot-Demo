# Docker Build Stage

FROM openjdk:11
WORKDIR /opt
ENV PORT 8081
EXPOSE 8081
ADD target/news-2.3.2.RELEASE.jar opt/news-2.3.2.RELEASE.jar
ENTRYPOINT ["java","-jar","/news-2.3.2.RELEASE.jar"]