FROM openjdk:17
WORKDIR /app
COPY build/libs/FileSystem-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-Dspring.datasource.url=jdbc:postgresql://host.docker.internal:5432/postgres", "-jar", "app.jar"]
