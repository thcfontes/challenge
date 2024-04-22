FROM openjdk:11-jdk

WORKDIR /app
ARG JAR_FILE=*.jar
COPY target/${JAR_FILE} app.jar
EXPOSE 8080

CMD ["java", "-jar", "app.jar"]