#!/bin/sh

DIRNAME=/var/www/html/project
ARCHIVE=backup_$(date +%Y_%m_%d)
DBUSER=root
DBPASSWORD=password
DBNAME=project


echo "dumping database ..."

mysqldump -u ${DBUSER} -p"${DBPASSWORD}" ${DBNAME} > "${DIRNAME}/dump.sql"

echo "zip archive ..."

tar -czf "${ARCHIVE}.tar.gz" ${DIRNAME}/ --exclude="${DIRNAME}/node_modules" --exclude="${DIRNAME}/vendor" --exclude="${DIRNAME}/.git" --exclude="${DIRNAME}/.idea" --exclude="${DIRNAME}/storage/logs/*"

rm "${DIRNAME}/dump.sql"


echo "success"
