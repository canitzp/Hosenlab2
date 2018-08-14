@echo off
cd src
if exist mods (
	@RD /S /Q mods
)
cd ..
if exist Hosenlab2.json (
	del Hosenlab2.json
)
if exist Hosenlab2.lock.json (
	del Hosenlab2.lock.json
)
java -jar voodoo.jar import yaml Hosenlab2.yaml .
java -jar voodoo.jar build Hosenlab2.pack.hjson -o Hosenlab2.lock.json --updateAll
PAUSE