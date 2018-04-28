#!/bin/bash

echo "About to convert any mp4's to mp3 at a256k bitrate "
for %%a in ("*.mp4") do ffmpeg -i "%%a" -ab 256K -f mp3 "%%~na.mp3"
pause 


echo "converting MKV videos to Mp3 at a 256k bitrate "
for %%a in ("*.mkv") do ffmpeg -i "%%a" -ab 256K -f mp3 "%%~na.mp3"
pause 


echo "Done converting"
clear
