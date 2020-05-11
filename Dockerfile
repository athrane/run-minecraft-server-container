FROM itzg/minecraft-server
 
RUN mkdir -m 777 /data/mods \
  && chown minecraft:minecraft /data/mods \
  && wget -P /data/mods https://github.com/athrane/bassebombecraft/releases/download/1.42.1/BasseBombeCraft-1.15.2-1.42-server.jar \
  && chmod 777 /data/mods/BasseBombeCraft-1.15.2-1.42-server.jar \
  && chown minecraft:minecraft /data/mods/BasseBombeCraft-1.15.2-1.42-server.jar

RUN ls -la /data 
RUN ls -la /data/mods 
  
ENV NAME=mc
ENV EULA=TRUE
ENV VERSION=1.15.2
ENV TYPE=FORGE
ENV FORGEVERSION=31.1.10

COPY log4j2.xml /tmp/log4j2.xml
  