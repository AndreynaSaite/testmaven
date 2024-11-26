FROM maven:3.8.8-eclipse-temurin-17

WORKDIR /usr/src/main

COPY . .

RUN mvn clean install

CMD ["java", "-cp", "target/docker_maven-1.0-SNAPSHOT.jar","Main"]