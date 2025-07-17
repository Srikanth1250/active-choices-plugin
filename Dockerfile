# Use Maven with Java 17
FROM maven:3.9.6-openjdk-17

# Set working directory inside container
WORKDIR /app

# Copy everything into container
COPY . .

# Build the Maven project (skip tests to speed up build)
RUN mvn clean install -DskipTests

# Default command (optional; can be overridden)
CMD ["mvn", "test"]
