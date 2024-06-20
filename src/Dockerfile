# Use an official Ubuntu 20.04 LTS image as a parent image
FROM ubuntu

ENV TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update package lists and install dependencies
RUN apt-get update && \
    apt-get install -y \
    apache2 \
    php \
    libapache2-mod-php \
    php-mysql \
    mysql-server \
    nano \
    net-tools \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Configure apache 
RUN rm /var/www/html/index.html
COPY . /var/www/html
COPY apache2.conf /etc/apache2/apache2.conf
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf
# RUN sed -i 's/80/8080/g' /etc/apache2/ports.conf

# Enable Apache modules
RUN a2enmod rewrite
RUN a2enmod headers

# Expose ports
EXPOSE 80
# EXPOSE 3306

# restart Apache and keep docker runing
CMD service apache2 restart  && tail -f /dev/null







# gcloud run set-env portfolio-ci-cd DB_NAME=freedb_portfolio DB_USER=freedb_admin123 DB_PASSWORD=W8V4RvX#MkH$?QS


# gcloud run services update portfolio-ci-cd --set-env-vars DB_NAME=freedb_portfolio,DB_USER=freedb_admin123,DB_PASSWORD=W8V4RvX#MkH$?QS


# -------------------------------------------------------------------------------------------------------------------------------------

# Local mysql config
# Set environment variables for MySQL root user password
# ENV MYSQL_ROOT_PASSWORD=""

# Run MySQL commands to create the user
# RUN service mysql start && \
#     mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';" && \
#     mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;" && \
#     mysql -uadmin -padmin -e "create DATABASE carrental" && \
#     mysql -uadmin -padmin -e "create DATABASE portfolio" && \
#     mysql -uadmin -padmin -e "create DATABASE videohosting" && \
#     mysql -uadmin -padmin -e "source /var/www/html/SQL/carrental.sql" && \
#     mysql -uadmin -padmin -e "source /var/www/html/SQL/portfolio.sql" && \
#     mysql -uadmin -padmin -e "source /var/www/html/SQL/videohosting.sql" && \
#     service mysql stop

# RUN sed -i 's/127.0.0.1/0.0.0.0/g' /etc/mysql/mysql.conf.d/mysqld.cnf
# RUN service mysql restart




# Start Apache and MySQL services
# CMD service apache2 start && service mysql start && tail -f /dev/null
