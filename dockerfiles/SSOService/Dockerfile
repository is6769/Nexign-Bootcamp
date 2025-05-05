FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /opt/app
COPY services/SSOService/pom.xml .
RUN mvn dependency:go-offline

COPY services/SSOService/src ./src
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17
WORKDIR /opt/app
COPY --from=build /opt/app/target/*.jar ./service.jar
EXPOSE 8765
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]