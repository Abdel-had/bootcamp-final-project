FROM python:3.6-alpine
LABEL org.opencontainers.image.authors="hanami.abdel.had@gmail.com"
WORKDIR /opt
COPY ./app.py .
COPY ./templates ./templates
COPY ./static ./static
RUN pip install flask==1.1.2
EXPOSE 8080
ENV ODOO_URL = "https://www.odoo.com/" \
    PGADMIN_URL= "https://www.pgadmin.org/"
ENTRYPOINT [ "python", "./app.py"]