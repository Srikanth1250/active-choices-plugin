# Use official Maven image with Java 17
FROM maven:3.9.6-eclipse-temurin-17

# Set the working directory inside the container
WORKDIR /app

# Copy all source files into the container
COPY . .

# Build the plugin (skip tests to save time)
RUN mvn clean install -DskipTests

# Optional: Run tests by default when container starts
CMD ["mvn", "test"]
