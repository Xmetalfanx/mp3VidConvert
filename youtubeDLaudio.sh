#!/bin/bash

##  The checks "is youtube-dl and ffmpeg installed? , can come later"

## Include functions
. functions.cfg

# Clears the screen
clear

# Idea
# 1 - download video or playlist of videos
# 2 - run ffmpeg, for more fine tune control of the audio output
# 3 - remove the video file that is left over

# (Idea) download video or video playlist
youtube-dl $1

## Convert videos
## Note: for now its all set to 256kbps 
batchVidConvert
