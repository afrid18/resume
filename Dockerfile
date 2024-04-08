FROM texlive/texlive:latest

RUN apt-get update && apt-get upgrade -y

WORKDIR /app
