FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=rootpass
ENV MYSQL_DATABASE=ctfdb

# Copy init.sql into container
COPY init.sql /docker-entrypoint-initdb.d/
