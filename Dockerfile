FROM openjdk:14-jdk-alpine
LABEL maintainer="Yuriy Fedorenko yurafedorenko721@gmail.com"
ADD /target/gateway-0.0.1-SNAPSHOT.jar gateway-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "gateway-0.0.1-SNAPSHOT.jar"]