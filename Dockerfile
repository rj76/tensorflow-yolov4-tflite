# Base image
FROM python:3.6

ENV HOME=/src

# create directory for the app user
RUN mkdir -p $HOME

# set work directory
WORKDIR $HOME

# install psycopg2 dependencies
RUN apt-get update \
    && apt-get -y install libpq-dev gcc

ENTRYPOINT ["/src/entrypoint.sh"]
