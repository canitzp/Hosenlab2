@echo off
java -jar voodoo.jar pack sk Hosenlab2.lock.json
java -jar voodoo.jar pack server Hosenlab2.lock.json
cd .server
cd hosenlab2
java -jar server-installer.jar server
PAUSE