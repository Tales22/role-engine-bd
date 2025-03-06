# Use the official MySQL 8.0 image
FROM mysql:8.0

# Set environment variables for MySQL
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=role_engine_db

# Copy the SQL script to initialize tables
COPY init.sql /docker-entrypoint-initdb.d/

# Expose the MySQL port
EXPOSE 3306
