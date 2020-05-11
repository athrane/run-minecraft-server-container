FROM itzg/minecraft-server

ENV NAME=mc
ENV EULA=TRUE
ENV VERSION=1.15.2
ENV TYPE=FORGE
ENV FORGEVERSION=31.1.10

COPY log4j2.xml /tmp/log4j2.xml

RUN ls -la /
RUN ls -la /data
WORKDIR /data/mods
RUN ls -la /data
RUN wget -P /tmp https://github.com/athrane/bassebombecraft/releases/download/1.42.1/BasseBombeCraft-1.15.2-1.42-server.jar
RUN ls -la /tmp

RUN ls -la /data/mods 
RUN cp /tmp/BasseBombeCraft-1.15.2-1.42-server.jar /data/mods
RUN ls -la /data/mods 
 
RUN chmod 777 /data/mods
RUN ls -la /data

RUN chown minecraft:minecraft /data/mods 
RUN ls -la /data

RUN mkdir -m 777 /data/mods2 \
  && wget -P /data/mods2 https://github.com/athrane/bassebombecraft/releases/download/1.42.1/BasseBombeCraft-1.15.2-1.42-server.jar \
  && chown minecraft:minecraft /data/mods2 
  
RUN ls -la /data
  