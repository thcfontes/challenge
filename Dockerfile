FROM maven:3.8.5-openjdk-17

EXPOSE 6500
COPY . .
RUN mvn clean install -DskipTests
CMD mvn spring-boot:run