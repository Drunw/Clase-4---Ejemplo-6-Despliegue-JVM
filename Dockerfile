# Etapa base: Java runtime
FROM eclipse-temurin:17-jre as runtime

WORKDIR /app

# Copiamos la app empacada por Quarkus
COPY target/quarkus-app/lib/ ./lib/
COPY target/quarkus-app/*.jar ./
COPY target/quarkus-app/app/ ./app/
COPY target/quarkus-app/quarkus/ ./quarkus/

# Comando para ejecutar
CMD ["java", "-jar", "quarkus-run.jar"]
