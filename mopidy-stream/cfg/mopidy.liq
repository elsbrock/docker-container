#!/usr/bin/liquidsoap

# script by https://github.com/dz0ny

set("log.file.path", "/dev/null")
set("log.stdout", true)
set("server.telnet", false)
set("harbor.bind_addr","0.0.0.0")
set("frame.duration",0.04)
set("root.max_latency",60.)

live = mksafe(input.harbor(port=8800, password="changeme", "/input"))
output.dummy(fallible=true, live)
output.harbor(%mp3(bitrate=128), port=8888, mount="/mopidy", live)
