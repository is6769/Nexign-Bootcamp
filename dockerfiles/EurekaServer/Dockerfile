FROM eclipse-temurin:17
RUN mkdir /opt/app
COPY services/EurekaServer/target/EurekaServer-0.0.1-SNAPSHOT.jar /opt/app/service.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar" , "/opt/app/service.jar"]
