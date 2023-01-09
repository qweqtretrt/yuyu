#!/bin/sh
if [ ! -f UUID ]; then
  UUID="d8d85480-edc0-4080-bc84-71befbc3b7e4"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

