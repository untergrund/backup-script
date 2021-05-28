# Backup Script

**What it does:**
The script creates a tar archive from a directory and backups the tar file to another directory, e.g. other device.

**How to use it:**
Add folowing line to cron (crontab -e) for a daily backup.

`0 0 * * * backup.sh src dst num`

- src: path to source directory
- dst: path to dst directory
- num: number of last stored copies

**Example:**
`0 0 * * * /path/to/script/backup.sh /path/to/source/BackupMe /media/path/to/Backup 5`