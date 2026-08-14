FROM eclipse-temurin:17-jre-alpine

RUN apk add --no-cache ttyd

WORKDIR /app
COPY target/literalura-0.0.1-SNAPSHOT.jar app.jar
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

EXPOSE 7681

ENTRYPOINT ["/app/entrypoint.sh"]
