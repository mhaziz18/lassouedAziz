FROM openjdk:11

# Install curl
RUN apt-get update && apt-get install -y curl

WORKDIR /app

# Download the JAR from Nexus (replace with your Nexus details)
RUN curl -o eventsProject-1.0.0.jar -u jenkins-user:admin http://192.168.1.3:8081/repository/myrepo/tn/esprit/spring/eventsProject/1.0/eventsProject-1.0.0.jar

EXPOSE 8089
CMD ["java", "-jar", "gestion-station-ski-1.0.jar"]