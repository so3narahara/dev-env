#/bin/bash

sudo chown node node_modules
npm install


# update private ip
REACT_NATIVE_PACKAGER_HOSTNAME=$(
    ifconfig | \
    grep 'inet' | \
    awk '{print $2}' | \
    grep -E '^(10\.|172\.1[6-9]\.|172\.2[0-9]\.|172\.3[0-1]\.|192\.168\.)'
)

echo $REACT_NATIVE_PACKAGER_HOSTNAME > .devcontainer/.env