FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY services/CDRService/target/CDRService-0.0.1-SNAPSHOT.jar /opt/app/service.jar
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]
