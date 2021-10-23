#!/usr/bin/env bash
source ./vars.sh

HOSTNAME=$(hostname)
DEST="/mnt/backup/$HOSTNAME"

ecryptfs-mount-private

# --include "/mnt/hdd/Archive" \
    # --include "/mnt/hdd/Plex" \
    # --include "/mnt/hdd/Pictures" \
    # --include "/mnt/hdd/Videos" \

rsync "${RSYNC_ARGS[@]}" \
    --include-from=include.txt \
    --progress \
    / $DEST
