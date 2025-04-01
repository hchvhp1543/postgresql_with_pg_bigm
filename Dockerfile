FROM bitnami/postgresql:16.4.0

USER root

RUN apt-get update && apt-get -y install build-essential libicu-dev

WORKDIR /
COPY pg_bigm-1.2-20240606.tar.gz pg_bigm-1.2-20240606.tar.gz
RUN tar -zxf pg_bigm-1.2-20240606.tar.gz

WORKDIR /pg_bigm-1.2-20240606

# /opt/bitnami/postgresql/bin/pg_config
RUN make USE_PGXS=1 PG_CONFIG=/opt/bitnami/postgresql/bin/pg_config && \
    su && \
    make USE_PGXS=1 PG_CONFIG=/opt/bitnami/postgresql/bin/pg_config install


