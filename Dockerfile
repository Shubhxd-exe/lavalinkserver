FROM eclipse-temurin:17-jre-alpine

WORKDIR /opt/lavalink

RUN wget https://github.com/lavalink-devs/Lavalink/releases/download/4.0.8/Lavalink.jar -O Lavalink.jar

COPY application.yml .

ENTRYPOINT ["java", "-jar", "Lavalink.jar"]
