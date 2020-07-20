#!/bin/bash
pulseaudio -k
pkill -f /dev/video0
mpv --geometry=-0-0 --autofit=30% --untimed /dev/video0 & ffmpeg -y -f x11grab -s 1680x1050 -i :0.0+1280 -threads 0 -f alsa -i default -vf scale=1280x720 -c:v h264 -g 24 -b:v 2M -preset ultrafast -c:a aac -pix_fmt yuv420p -f flv "rtmp://live-lax.twitch.tv/app/xxxx_xxxxxxxxx_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
