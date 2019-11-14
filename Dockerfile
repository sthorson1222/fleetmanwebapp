FROM openjdk:8u131-jdk-alpine

MAINTAINER Sean Thorson "sean.thorson@excidion.com"

EXPOSE 8080

#RUN rm -rf /usr/local/tomcat/webapp/*

WORKDIR /usr/local/bin/

COPY  ./target/fleetman-0.0.1-SNAPSHOT.jar webapp.jar



#ENV JAVA_OPTS="-Dspring.profiles.active=docker-demo"

CMD ["java","-Dspring.profiles.active=docker-demo", "-jar", "webapp.jar"]