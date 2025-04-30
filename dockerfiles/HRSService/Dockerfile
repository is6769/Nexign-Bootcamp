FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /opt/app
COPY services/HRSService/pom.xml .
RUN mvn dependency:go-offline

COPY services/HRSService/src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17
WORKDIR /opt/app
COPY --from=build /opt/app/target/*.jar ./service.jar
EXPOSE 8084
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]