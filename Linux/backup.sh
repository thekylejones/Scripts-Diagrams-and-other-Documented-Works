#!/bin/bash
mkdir /var/backup
sudo tar cvvf /var/backup/home.tar
mv var/backup/home.tar /var/backup/home03172022.tar
ls -lah /var/backups > /var/backup/file_report.txt
free -h > /var/backups/disk_report.txt
