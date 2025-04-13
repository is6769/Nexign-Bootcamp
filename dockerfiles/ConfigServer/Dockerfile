FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY services/ConfigServer/target/ConfigServer-0.0.1-SNAPSHOT.jar /opt/app/service.jar
EXPOSE 8888
CMD ["java", "-jar", "/opt/app/service.jar"]
