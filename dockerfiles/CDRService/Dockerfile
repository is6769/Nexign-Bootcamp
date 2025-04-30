FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /opt/app
COPY services/CDRService/pom.xml .
RUN mvn dependency:go-offline

COPY services/CDRService/src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17
WORKDIR /opt/app
COPY --from=build /opt/app/target/*.jar ./service.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]