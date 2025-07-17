# Use Maven with Java 17 (suitable for Jenkins plugin development)
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory inside the container
WORKDIR /plugin

# Copy all source code and pom.xml into the container
COPY . .

# Build and test the plugin
RUN mvn clean install

# Default command (optional)
CMD ["ls", "-lh", "target"]
