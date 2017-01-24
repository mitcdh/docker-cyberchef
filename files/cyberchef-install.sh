#!/bin/sh

CYBERCHEF_SRC=/www/cyberchef-src
CYBERCHEF_BUILD=${CYBERCHEF_SRC}/build/prod
CYBERCHEF_PATH=/www/public

echo "updating cyberchef"

(cd "${CYBERCHEF_SRC}" && npm install && grunt prod)

cp -Ruf "${CYBERCHEF_BUILD}/." "${CYBERCHEF_PATH}/"