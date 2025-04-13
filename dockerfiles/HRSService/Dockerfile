FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY services/HRSService/target/HRSService-0.0.1-SNAPSHOT.jar /opt/app/service.jar
EXPOSE 8084
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]
