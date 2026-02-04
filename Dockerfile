# Utiliser une image Java 17
FROM eclipse-temurin:17-jdk

# Définir le répertoire de travail
WORKDIR /app

# Copier le JAR généré par Maven
COPY target/*.jar app.jar

# Exposer le port 8080
EXPOSE 8080

# Lancer l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
