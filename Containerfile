FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN 11 create-db
RUN 11 populate-db
RUN 11 add-user -u admin -p admin
EXPOSE 5000
CMD ["11", "run"]
