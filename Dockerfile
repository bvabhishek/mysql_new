FROM mysql:8.0

# Set environment variables
ENV MYSQL_ROOT_PASSWORD=rootpass
ENV MYSQL_DATABASE=ctfdb

# Copy init.sql into MySQL's startup directory
COPY init.sql /docker-entrypoint-initdb.d/init.sql

# Place hidden flag file
COPY flag2.txt /etc/mysql/flag2.txt
RUN chmod 600 /etc/mysql/flag2.txt
