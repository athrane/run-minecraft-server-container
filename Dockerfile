FROM itzg/minecraft-server

ARG MOD_JAR
 
RUN mkdir -m 777 /data/mods \
  && chown minecraft:minecraft /data/mods \
  && wget -P /data/mods https://github.com/athrane/bassebombecraft/releases/download/1.42.1/$MOD_JAR \
  && chmod 777 /data/mods/$MOD_JAR \
  && chown minecraft:minecraft /data/mods/$MOD_JAR
  
ENV NAME=mc
ENV EULA=TRUE
ENV VERSION=1.15.2
ENV TYPE=FORGE
ENV FORGEVERSION=31.1.10

COPY log4j2.xml /tmp/log4j2.xml
  