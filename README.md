# My Resume development workflow

### Local Latex setup

This resume is built using latex, so you need an environment that has latex installed. But my approach is to use docker or podman with compose to build such environment, the workflow goes as follows

1. Start compose using the `docker-compose.yaml` file from the root directory of this project with `docker compose up -d`
2. Once the build is done and compose is up and healthy; check using `docker compose ls -a`
3. Now open the PDF in a viewer that supports reloading new file when there are changes like Skim on MacOS
4. Make some changes using editor and save; this will trigger build and reload the resume viewer and you should see changes
