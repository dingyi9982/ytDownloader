#!/bin/bash

# >> Check if curl is installed or nor
if ! command -V curl > /dev/null 2>&1; then
    echo "curl not installed, please install it and try again"
    exit
fi

wget "https://github.com/aandrew-me/ffmpeg-builds/releases/download/v8/ffmpeg_linux_amd64.tar.xz"
wget "https://github.com/aandrew-me/ffmpeg-builds/releases/download/v8/node_linux_amd64" -O node
chmod +x node
tar -xf ffmpeg_linux_amd64.tar.xz
mv ffmpeg_linux_amd64 ffmpeg
chmod +x ffmpeg/bin/ffmpeg
chmod +x ffmpeg/bin/ffprobe
chmod +x ffmpeg/bin/ffplay

# Download deno (for yt-dlp JavaScript challenge solving)
if [ "$(uname -m)" = "aarch64" ]; then
    wget "https://github.com/denoland/deno/releases/latest/download/deno-aarch64-unknown-linux-gnu.zip" -O deno.zip
else
    wget "https://github.com/denoland/deno/releases/latest/download/deno-x86_64-unknown-linux-gnu.zip" -O deno.zip
fi
unzip -o deno.zip
rm deno.zip
chmod +x deno

# Download yt-dlp (bundled, no manual download needed)
if [ "$(uname -m)" = "aarch64" ]; then
    wget "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux_aarch64" -O yt-dlp
else
    wget "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp_linux" -O yt-dlp
fi
chmod +x yt-dlp

