FROM itzg/minecraft-server

ARG MOD_JAR
ARG MOD_URL
ARG MC_VERSION
ARG FORGE_VERSION
 
RUN mkdir -m 777 /data/mods \
  && chown minecraft:minecraft /data/mods \
  && wget -P /data/mods $MOD_URL/$MOD_JAR \
  && chmod 777 /data/mods/$MOD_JAR \
  && chown minecraft:minecraft /data/mods/$MOD_JAR
  
ENV NAME=mc
ENV EULA=TRUE
ENV VERSION=$MC_VERSION
ENV TYPE=FORGE
ENV FORGEVERSION=$FORGE_VERSION

COPY log4j2.xml /tmp/log4j2.xml
  