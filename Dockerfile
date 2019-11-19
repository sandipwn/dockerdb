# download the required mysql base image
FROM 200.0.1.100:5000/mysql5.7


# set the environment variables
ENV MYSQL_ROOT_PASSWORD=manager

ENV MYSQL_DATABASE=sd

# copy the schema file to /docker-entrypoint-initdb.d
COPY schema.sql /docker-entrypoint-initdb.d/

# EXPOSE PORT 3306
EXPOSE 3306
