Invoke-WebRequest -Uri "https://github.com/aandrew-me/ffmpeg-builds/releases/download/v8/node.exe" -OutFile node.exe
Invoke-WebRequest -Uri "https://github.com/aandrew-me/ffmpeg-builds/releases/download/v8/ffmpeg_win64.zip" -OutFile ffmpeg_win64.zip
Expand-Archive -Path ffmpeg_win64.zip -DestinationPath .
Remove-Item -Path ffmpeg_win64.zip
Move-Item -Path .\ffmpeg_win64 -Destination .\ffmpeg

# Download deno (for yt-dlp JavaScript challenge solving)
Invoke-WebRequest -Uri "https://github.com/denoland/deno/releases/latest/download/deno-x86_64-pc-windows-msvc.zip" -OutFile deno.zip
Expand-Archive -Path deno.zip -DestinationPath . -Force
Remove-Item -Path deno.zip

# Download yt-dlp (bundled, no manual download needed)
Invoke-WebRequest -Uri "https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp.exe" -OutFile yt-dlp.exe