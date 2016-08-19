# iRobot control

This program helps you to control your iRobot within a web interface or other script you would like to run. 

## Installation

### 1. Clone this repository
```
git clone http://gitlab.christoph-caprano.de/bachelorarbeit/streaming-server.git
cd streaming-server
```

### 1. Make camera_stream_h264.sh executable (if not still done)
```
chmod u+x camera_stream_h264.py
```

### 2. Install Janus Gateway

Follow the installation instructions from https://github.com/meetecho/janus-gateway to install Janus Gateway which is used as a media server. 

### 3. Install GStreamer

GStreamer is used to send the stream from your camera to the media server (in our case Janus Gateway): 

For ubuntu you can use the following commands: 
```
sudo add-apt-repository ppa:gstreamer-developers/ppa
sudo apt-get update
sudo apt-get install gstreamer1.0*
```

### 7. Start the program

This program will start the camera stream, the janus gateway and the middleware for accepting proxy requests (e.g. from your webserver). 

```
./boot.sh
```
