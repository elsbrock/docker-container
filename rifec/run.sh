#!/bin/bash

if [ -n "$MACADDR" ]; then
    sed -i "s/MacAddress=demo/MacAddress=$MACADDR/g" /usr/local/src/rifec/rifec.config
fi

if [ -n "$UPLOADKEY" ]; then
    sed -i "s/UploadKey=demo/UploadKey=$UPLOADKEY/g" /usr/local/src/rifec/rifec.config
fi

exec /usr/local/src/rifec/rifec.pl -c /usr/local/src/rifec/rifec.config
