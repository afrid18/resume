FROM texlive/texlive:latest

# Install inotify-tools (still needed for start.sh) and git
RUN apt-get update && apt-get install -y --no-install-recommends \
    inotify-tools \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory
WORKDIR /project

# Startup script
COPY start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh
