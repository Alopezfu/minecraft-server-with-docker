#!/bin/bash

# Set EULA to true
sed -i 's/eula=false/eula=true/' /server/eula.txt

# Set MOTD
sed -i 's/^motd=.*/motd=§6§l✦ §aBienvenido a §eHISPANOZUELA §6§l✦§r/' /server/server.properties

# Disable online mode
sed -i 's/^online-mode=.*/online-mode=false/' /server/server.properties

# Copy logo
cp /server-icon.png /server