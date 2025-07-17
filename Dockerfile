FROM eclipse-temurin:17-jdk

RUN apt-get update && apt-get install -y maven

WORKDIR /plugin
COPY . .

RUN mvn clean install -DskipTests
CMD ["mvn", "test"]
