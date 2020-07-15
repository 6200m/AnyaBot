#!/bin/sh
cp cdn/compiled.txt $PWD
cat <<EOT >> constants-twitch.js

EOT
value=$(<compiled.txt)
echo "$value" >> "constants-twitch.js"
mkdir bin-debug\shell
mv compiled.txt bin-debug\shell
del src\constants-twitch.sh
mv constants-twitch.sh src\
exit
