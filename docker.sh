#!/bin/sh

rm -rf jenkins-docker
mkdir jenkins-docker
cd jenkins-docker
touch dockerfile
cat <<EOT>> dockerfile
FROM devopsedu/webapp
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD apachectl -D FOREGROUND
EOT
docker ps -q --filter ancestor="devopscert:latest" | xargs docker stop
docker image tag myimage:latest devopscert:previous
docker build -t devopscert:latest .
docker run -itd -p 8081:8080 devopscert:latest
#docker build -t devopscert:$BUILD_NUMBER .
#docker run -itd -P devopscert:$BUILD_NUMBER
