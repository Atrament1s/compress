function compress {
  yt-dlp -f wv+wa "$args" -o temp-video-compress-abcde.mp4
  ffmpeg -i temp-video-compress-abcde.mp4 -vcodec libx265 -crf 51 -b:a 1k ./output.mp4
  rm temp-video-compress-abcde.mp4
}
