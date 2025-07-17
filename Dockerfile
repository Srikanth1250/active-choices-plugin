# 1. Base image with Maven + Java 17 (for Jenkins plugin compatibility)
FROM maven:3.9.6-eclipse-temurin-17

# 2. Set working directory
WORKDIR /app

# 3. Copy your source code and pom.xml
COPY . .

# 4. Build the plugin, skipping tests to speed up the image build
RUN mvn clean install -DskipTests

# 5. When container runs, it runs tests by default
CMD ["mvn", "test"]
