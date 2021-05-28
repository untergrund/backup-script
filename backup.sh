#! /bin/sh
# crontab -e
# 0 0 * * * backup.sh src dst num

# Add new archive
SRC=$1
DST=$2
NUM=$3
NAME=$(date +%Y%m%d)

tar cfz $DST/$NAME.tar.gz -C $SRC $(ls $SRC)
echo $(date +%Y/%m/%d-%H:%M:%S): New backup file added!

# Remove old archives
cd $DST
NUM=$(( $(ls | wc -l) - $NUM ))

if [ "$NUM" -gt "0" ]; then
    rm $( ls | head -$NUM)
    echo $(date +%Y/%m/%d-%H:%M:%S): Old backup files removed!
fi