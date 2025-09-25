FROM alpine:3.22.1

# Install Java 21
RUN apk add openjdk21

# Copy tools
COPY tools/config_server.sh /
COPY tools/create_backup.sh /

# Config CRON backups
RUN crontab -l | { cat; echo "*/30 * * * * /bin/sh /create_backup.sh"; } | crontab -

WORKDIR /server

# Copy logo
COPY server-icon.png /server-icon.png

# Download Minecraft server
RUN wget -O /minecraft_server.jar https://piston-data.mojang.com/v1/objects/6bce4ef400e4efaa63a13d5e6f6b500be969ef81/server.jar

# Run Minecraft server
CMD ["sh", "-c", "java -Xmx1024M -Xms1024M -jar /minecraft_server.jar nogui"]

# Expose default Minecraft port
EXPOSE 25565