#!/bin/sh

CLONED_DIR="Lychee"

echo "[INFO] Downloading..."

cd $(dirname $0)
echo pwd

rm -rf ${CLONED_DIR}

git clone https://github.com/electerious/Lychee.git

rm -rf ${CLONED_DIR}/.git
rm -rf ${CLONED_DIR}/.github
rm -f ${CLONED_DIR}/.gitignore
rm -f ${CLONED_DIR}/.gitattributes

cp -r -f ${CLONED_DIR}/* src

rm -rf ${CLONED_DIR}

echo "[INFO] Finish."