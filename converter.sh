#!/bin/bash

# TODO: ask user what bitrate they want to user

# TODO: make functions
##############################################
# Just move for now ... I can manually delete later ... this is handy just in case I want to keep the videos too
function moveVideos
{


  # Make a directory to put the videos in
  mkdir converted$1videos

  # Move the videos - noting that if the file ext is detected, it should already be converted so no "non-converted" video files should be left here

  # Find the files and then move them to the newly created folder
  find -name "*.$1" -exec mv "*.$1" converted$1videos

  echo "Converted files are now moved"
  pause

}

function convertVideos
{

  echo "About to convert any $1 files in the current directly to Mp3s at a 256kbs bitrate "
  find -name "*.$1" -exec ffmpeg -i {} -acodec libmp3lame -ab 256k {}.mp3 \;
  pause

  moveVideos $1
}


convertVideos mp4
convertVideos mkv
convertVideos webm


echo "Done converting"
clear
