# 1. Base Image with Java 17
FROM eclipse-temurin:17-jdk-alpine

# 2. Set the working directory
WORKDIR /app

# 3. Copy the compiled JAR file from Maven's target folder
COPY target/pixels-api-1.0.0.jar app.jar

# 4. Expose the port
EXPOSE 8080

# 5. Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]