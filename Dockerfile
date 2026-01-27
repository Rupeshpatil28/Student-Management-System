FROM maven:3:8:3-openjdk-17 AS build
COPY . .
RUN mvn clean install

FROM eclipse-temurin:17-jdk
COPY --from=build /target/familyhub-0.0.1-SNAPSHOT.jar Student-Management-System-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/Student-Management-System-0.0.1-SNAPSHOT.jar"]
