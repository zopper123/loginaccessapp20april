# Use a lightweight OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the jar file into the container
COPY /Users/ravikumar/.m2/repository/com/example/Employe-Management/0.0.1-SNAPSHOT/Employe-Management-0.0.1-SNAPSHOT.jar app.jar

# Expose port 1111
EXPOSE 1111

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
