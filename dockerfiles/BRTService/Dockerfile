FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY services/BRTService/target/BRTService-0.0.1-SNAPSHOT.jar /opt/app/service.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]
