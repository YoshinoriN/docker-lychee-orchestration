#!/bin/sh
set -e

ROOT_DIR_NAME=backups
SUB_DIR_NAME=`date +%Y%m%d`
FILE_PREFIX=`date +%H%M%S`
IMAGE_BASE_NAME=`basename $(pwd) | tr -d "-"`

echo "[INFO] Start backup."

if [ ! -d ./${ROOT_DIR_NAME}/${SUB_DIR_NAME} ]; then
  mkdir ./${ROOT_DIR_NAME}/${SUB_DIR_NAME}
fi

sudo docker run --volumes-from lychee-mariadb -v $(pwd)/${ROOT_DIR_NAME}/${SUB_DIR_NAME}/:/${ROOT_DIR_NAME}/${SUB_DIR_NAME}/ \
  ${IMAGE_BASE_NAME}_lychee-mariadb:latest tar cvf /${ROOT_DIR_NAME}/${SUB_DIR_NAME}/${FILE_PREFIX}_lychee-mariadb.tar /var/lib/mysql

result=`find -type d -path \*lychee/src`

sudo tar cvf ./${ROOT_DIR_NAME}/${SUB_DIR_NAME}/lycee.tar $result