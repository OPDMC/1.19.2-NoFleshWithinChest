# §§template§§
FROM openjdk:17-slim-bullseye
# §§template§§
ENV EULA=TRUE
WORKDIR /minecraft
COPY ./minecraft_server /docker_init
COPY docker-init.sh ../init.sh
EXPOSE 25565
ENTRYPOINT [ "sh", "../init.sh" ]