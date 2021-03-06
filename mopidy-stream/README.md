# mopidy-stream

This is a docker container which provides the latest mopidy release combined with a streaming server. The current version (0.19) sends EOS (End-of-Stream) if the track changes which closes the stream in icecast, mplayer, etc. 

This solution pipes the output through liquidsoap which then provides a http stream.

## Setup

```
$~ git clone https://github.com/schinken/docker-container.git
$~ cd docker-container/mopidy-stream
$~ docker build -t mopidy-stream .
```

## Running the container

```
docker run -e MOPIDY_USERNAME=spotifyUser42 -e MOPIDY_PASSWORD=spotifyPassword123 -p 6600:6600 -p 6680:6680 -p 8800:8800 -t schinken/mopidy-stream:latest
```

* Port 6600 provides the mpd interface
* On Port 6680 there's the webinterface "Mopidy-MusicBox-Webclient"
* Port 8800 provides the HTTP stream encoded as mp3-192


## Planned

* I will add a mappable volume to include a share with all your music which is then indexed by mopidy
