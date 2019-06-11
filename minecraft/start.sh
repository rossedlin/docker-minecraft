#!/usr/bin/env bash

#
# Load Craft Bukkit
#
cd /minecraft/server
rm craftbukkit*.jar
rm spigot*.jar

cd /minecraft
cp spigot/craftbukkit-1.8.8.jar server/craftbukkit-1.8.8.jar

#
# Load Plugins
#
#cd /minecraft/server/plugins
#rm *.jar
#cp -R /minecraft/plugins/*.jar /minecraft/server/plugins

#
# Start Minecraft Server
#
# screen -S "cryslo9" -U -m -d java -Xms1G -Xmx2G -jar forge-1.12.2-14.23.2.2611-universal.jar nogui
#
cd /minecraft/server
java -Xms1G -Xmx2G -jar craftbukkit-1.8.8.jar nogui