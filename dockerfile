# Use an official PostgreSQL image
FROM postgres:latest

# Environment variables
ENV POSTGRES_DB=RNEdb
ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=youssef31

# Create schema and table, and insert data
COPY init.sql /docker-entrypoint-initdb.d/

# Expose PostgreSQL default port
EXPOSE 5432
