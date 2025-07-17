# Use Maven with Java 17
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory inside the container
WORKDIR /app

# Copy your Jenkins plugin source code into the container
COPY . .

# Build the plugin (run tests too)
RUN mvn clean install

# Default command (you can override this)
CMD ["ls", "-lh", "target"]
