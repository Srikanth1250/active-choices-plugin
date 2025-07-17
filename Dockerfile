# Use Maven with Java 17
FROM maven:3.9.6-openjdk-17

# Set working directory
WORKDIR /plugin

# Copy source
COPY . .

# Run Maven build
CMD ["mvn", "clean", "install", "-DskipTests"]
