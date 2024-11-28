# Stage 1: Build the Java application
FROM maven:3.8.5-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Deploy with Tomcat and MySQL
FROM tomcat:10.1-jdk17-corretto

# Set up the working directory for Tomcat
WORKDIR /usr/local/tomcat

# Copy the WAR file to Tomcat's webapps directory
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/Deployment.war

# Install MySQL
RUN apt-get update && apt-get install -y mysql-server && apt-get clean

# Set up MySQL configurations
ENV MYSQL_ROOT_PASSWORD=system
ENV MYSQL_DATABASE=basudevconstructions_db
ENV MYSQL_USER=root
ENV MYSQL_PASSWORD=system

# Create an entrypoint script
COPY start.sh /usr/local/tomcat/bin/start.sh
RUN chmod +x /usr/local/tomcat/bin/start.sh

# Expose the application and MySQL ports
EXPOSE 8076 3306

# Start both MySQL and Tomcat using the entrypoint script
CMD ["/usr/local/tomcat/bin/start.sh"]
