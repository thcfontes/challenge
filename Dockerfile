FROM openjdk:11-jdk

WORKDIR /app
ARG JAR_FILE=*.jar
COPY target/${JAR_FILE} /app/app.jar


ENTRYPOINT ["java", "-jar", "app.jar"]