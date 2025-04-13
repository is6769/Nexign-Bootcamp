FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY services/ApiGateway/target/ApiGateway-0.0.1-SNAPSHOT.jar /opt/app/service.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]
