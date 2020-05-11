FROM itzg/minecraft-server

ARG MOD_JAR
ARG MOD_URL
 
RUN mkdir -m 777 /data/mods \
  && chown minecraft:minecraft /data/mods \
  && wget -P /data/mods $MOD_URL \
  && chmod 777 /data/mods/$MOD_JAR \
  && chown minecraft:minecraft /data/mods/$MOD_JAR
  
ENV NAME=mc
ENV EULA=TRUE
ENV VERSION=1.15.2
ENV TYPE=FORGE
ENV FORGEVERSION=31.1.10

COPY log4j2.xml /tmp/log4j2.xml
  