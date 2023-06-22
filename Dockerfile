FROM adoptopenjdk/openjdk11:alpine-jre
# ARG  java to dir target/spring-boot-web.jar

ARG JAR_FILE=target/spring-boot-web.jar

# JAR_FILE  target/spring-boot-web.jar

WORKDIR /opt/app
# WORKDIR /opt/opp

COPY ${JAR_FILE} app.jar

# copy JAR_FILE to app.jar
ENTRYPOINT ["java","-jar","app.jar"]