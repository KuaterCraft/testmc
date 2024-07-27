FROM itzg/minecraft-server:java21-jdk
WORKDIR /minecraft
RUN apt-get update && apt-get install -y --no-install-recommends bash \
    && rm -rf /var/lib/apt/lists/*
COPY ./data /minecraft
COPY start.sh /minecraft
RUN chmod +x /minecraft/start.sh
EXPOSE 25565
CMD ["/minecraft/start.sh"]
