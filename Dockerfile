FROM eclipse-temurin:17
WORKDIR workspace
COPY target/*.jar order-service.jar
ENTRYPOINT ["java", "-jar", "order-service.jar"]
