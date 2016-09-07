#!/bin/sh

gst-launch-1.0 -e uvch264src \
	initial-bitrate=5000 average-bitrate=5000 \
	iframe-period=2000 device=/dev/video0 \
	name=src auto-start=true src.vfsrc ! queue ! \ 
	video/x-raw,width=320,height=240,framerate=15/1 ! \
	fakesink src.vidsrc ! queue ! \
	video/x-h264,width=1920,height=1080,framerate=30/1,profile=constrained-baseline! \
	 h264parse ! rtph264pay ! udpsink host=127.0.0.1 port=8004

