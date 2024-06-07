FROM openjdk:17-slim-bullseye
RUN apt-get update && apt-get install -y dos2unix
ENV EULA=TRUE
WORKDIR /minecraft
COPY ./minecraft_server /docker_init
COPY docker-init.sh ../init.sh
RUN dos2unix ../init.sh && chmod +x ../init.sh
RUN dos2unix /docker_init/docker-start.sh && chmod +x /docker_init/docker-start.sh
EXPOSE 25565
ENTRYPOINT [ "sh", "../init.sh" ]