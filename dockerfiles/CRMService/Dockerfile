FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY services/CRMService/target/CRMService-0.0.1-SNAPSHOT.jar /opt/app/service.jar
EXPOSE 8083
ENTRYPOINT ["java", "-jar", "/opt/app/service.jar"]
