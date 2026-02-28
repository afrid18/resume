FROM texlive/texlive:latest

RUN apt-get update && apt-get install -y --no-install-recommends \
    inotify-tools \
    git \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /project

COPY start.sh /usr/local/bin/start.sh
RUN chmod +x /usr/local/bin/start.sh

# Ensure the container stays open even if the script hits an error
CMD ["/usr/local/bin/start.sh"]
