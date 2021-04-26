FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} eureka.jar
ENTRYPOINT ["java", "-jar", "/eureka.jar"]

LABEL org.label-schema.name="eureka"
LABEL org.label-schema.description="Docker image for eureka"
LABEL org.label-schema.docker.cmd="docker run --network='host' eureka"