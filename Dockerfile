# Docker Build Stage

FROM openjdk:11
EXPOSE 8081
ADD target/news-0.0.1.war news-0.0.1.war
ENTRYPOINT ["java","-war","/news-0.0.1.war"]
