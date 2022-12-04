FROM openjdk:17-jdk-slim-bullseye
COPY build/libs/distributivo-backend-0.0.1-SNAPSHOT.jar app.jar
RUN apt-get update -qq \
    && apt-get install curl -y
ENTRYPOINT ["java", "-jar", "/app.jar"]
HEALTHCHECK --start-period=11s --interval=5s --timeout=4s --retries=3 CMD curl --silent --fail --request GET http://127.0.0.1:8080/actuator/health
