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
docker build -t devopscert:$BUILD_NUMBER .
docker run -itd -p devopscert:$BUILD_NUMBER
