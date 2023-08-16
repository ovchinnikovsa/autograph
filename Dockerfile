FROM debian:10 AS build-server

WORKDIR /var

RUN apt update && apt -y upgrade
RUN apt install -y wget
RUN wget http://i.tk-chel.ru/soft/WebMapCore/webmapcore_linux.sh
RUN chmod u+x ./webmapcore_linux.sh
RUN ./webmapcore_linux.sh; exit 0

# VOLUME $(PWD)/docker/volumes/webmap:./webmap
# COPY src/ .
# COPY docker/volumes/WebMapCore .


EXPOSE 5000:80

# ENTRYPOINT ["./entrypoint.sh"]
# ENTRYPOINT ["systemctl start webmapcore.service"]