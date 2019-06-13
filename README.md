# Backup Project / Folder

Backup PHP | Laravel OR any Project folder with MySQL Database Dump

Change path and databse config in `backup.sh`

```
DIRNAME=/var/www/html/project
DBUSER=root
DBPASSWORD=password
DBNAME=project
```

It will generate `.tar.gz` file with `dump.sql`

### Usage

```
$ sh backup.sh
```
Or set in crontab

```
# Every day at midnight

0 0 * * * /bin/sh /path/to/backup.sh
```
