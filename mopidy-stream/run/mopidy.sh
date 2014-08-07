#!/bin/bash

if [ -n "$MOPIDY_PASSWORD" ]; then
    sed -i "s/password = demo/password = $MOPIDY_PASSWORD/g" /etc/mopidy/mopidy.conf
fi

if [ -n "$MOPIDY_USERNAME" ]; then
    sed -i "s/username = demo/username = $MOPIDY_USERNAME/g" /etc/mopidy/mopidy.conf
fi

exec sudo -u mopidy mopidy --config /etc/mopidy/mopidy.conf
