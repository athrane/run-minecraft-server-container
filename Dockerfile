FROM itzg/minecraft-server

ARG 
 
RUN mkdir -m 777 /data/mods \
  && chown minecraft:minecraft /data/mods \
  && wget -P /data/mods -O bassebombecraft.jar https://github.com/athrane/bassebombecraft/releases/download/1.42.1/BasseBombeCraft-1.15.2-1.42-server.jar \
  && chmod 777 /data/mods/bassebombecraft.jar \
  && chown minecraft:minecraft /data/mods/bassebombecraft.jar
  
ENV NAME=mc
ENV EULA=TRUE
ENV VERSION=1.15.2
ENV TYPE=FORGE
ENV FORGEVERSION=31.1.10

COPY log4j2.xml /tmp/log4j2.xml
  