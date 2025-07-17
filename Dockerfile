# Use Maven with Java 17
FROM maven:3.9.6-openjdk-17

# Set working directory
WORKDIR /plugin

# Copy project files
COPY . .

# Build the plugin
CMD ["mvn", "clean", "install", "-DskipTests"]
