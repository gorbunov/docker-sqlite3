FROM debian:buster-slim
LABEL maintainer="Oleg Gorbunov <dev.oleg.gorbunov@gmail.com>"
LABEL org.label-schema.vcs-url="https://github.com/gorbunov/docker-sqlite3"

RUN apt-get update && \
	DEBIAN_FRONTEND=noninteractive apt-get -yq --no-install-recommends install sqlite3=3.* && \
	rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
	mkdir -p /db

VOLUME /db
WORKDIR /db

ENTRYPOINT ["sqlite3"]
