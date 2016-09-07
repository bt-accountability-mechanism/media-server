# Media gateway server for iRobot webcam

## Getting started

### Installation

```bash
$ # clone repo
$ https://github.com/bt-accountability-mechanism/streaming-server
$ cd streaming-server
$ # install files
$ sudo ./install.sh
```

If you need H.264, you have to activate this in the streaming plugin (see reference https://github.com/meetecho/janus-gateway). 

### Usage
Start boot script to run the program (for startup, add it the rc.local commands): 

```bash
$ sudo ./boot.sh
```

For changing the camera parameters, change the camera_stream_h264.sh (`sudo nano camera_stream_h264.sh`) file. 


## Manual installation

### 1. Clone this repository
```bash
$ git clone https://github.com/bt-accountability-mechanism/streaming-server
$ cd streaming-server
```

### 1. Make camera_stream_h264.sh executable (if not still done)
```bash
$ chmod u+x camera_stream_h264.py
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
