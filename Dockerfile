FROM openjdk:11-jdk

WORKDIR /app
ARG JAR_FILE=*.jar
COPY target/${JAR_FILE} /app/app.jar
EXPOSE 6500

CMD ["java", "-jar", "app.jar"]