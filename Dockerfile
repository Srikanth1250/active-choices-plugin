# Use a general Maven image with Java 17
FROM maven:3.9.6-openjdk-17

# Set working directory
WORKDIR /app

# Copy the source code
COPY . .

# Build the plugin (skip tests for speed)
RUN mvn clean package -DskipTests

# Default command (optional)
CMD ["java", "-version"]
