FROM docker.io/n8nio/n8n:1.121.2

USER root

RUN if command -v apk >/dev/null 2>&1; then \
      apk add --no-cache ffmpeg; \
    elif command -v apt-get >/dev/null 2>&1; then \
      apt-get update && apt-get install -y --no-install-recommends ffmpeg && rm -rf /var/lib/apt/lists/*; \
    else \
      echo "No supported package manager found" && exit 1; \
    fi
