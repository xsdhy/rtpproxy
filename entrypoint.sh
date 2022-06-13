#!/bin/sh
cmd="rtpproxy -F"
if [ 0"$PUBLIC_ADDRESS" != "0" ]; then
    cmd=$cmd" -A "$PUBLIC_ADDRESS
fi
if [ 0"$INNER_ADDRESS" != "0" ]; then
    cmd=$cmd" -l "$INNER_ADDRESS
fi
if [ 0"$INNER_ADDRESS" != "0" ]; then
    cmd=$cmd" -s "$INNER_ADDRESS
fi
if [ 0"$MEDIA_MIN_PORT" != "0" ]; then
    cmd=$cmd" -m "$MEDIA_MIN_PORT
fi
if [ 0"$MEDIA_MAX_PORT" != "0" ]; then
    cmd=$cmd" -M "$MEDIA_MAX_PORT
fi
$cmd