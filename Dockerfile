FROM docker.io/n8nio/n8n:1.121.2

USER root

RUN apk add --no-cache ffmpeg ffmpeg-libs fontconfig font-noto-cjk && fc-cache -f -v

USER node
