#!/usr/bin/env bash
youtube-dl \
    --no-playlist \
    --ignore-errors \
    --batch-file "$1" \
    --no-call-home \
    --extract-audio \
    --audio-format mp3 \
    --output "~/Music/Downloads/%(title)s.%(ext)s"
