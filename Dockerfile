FROM ubuntu:latest

# Set the locale
ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8

# Install TeX Live and inotify-tools (Zathura is GONE)
RUN apt-get update && apt-get install -y --no-install-recommends \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    texlive-fonts-extra \
    texlive-bibtex-extra \
    biber \
    latexmk \
    inotify-tools \
    vim \
    git \
    && rm -rf /var/lib/apt/lists/*  # Clean up apt cache

# Set the working directory
WORKDIR /project

# Startup script (simplified)
COPY start.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/start.sh

# No CMD needed
