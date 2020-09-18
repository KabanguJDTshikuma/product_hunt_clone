# Base Image
FROM python:3.7-alpine
MAINTAINER Kabangu


# set default environment variables
ENV PYTHONUNBUFFERED 1

# copy the requirements file to do
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

# create and set working directory
RUN mkdir /app
WORKDIR /app
COPY ./app /app

# add a user in case the image become compromise.
RUN adduser -D user
USER user