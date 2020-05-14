#FROM ubuntu:latest
#RUN apt-get update && apt-get install -y -q nginx
#COPY ./index.html /usr/share/nginx/html/
#CMD ["nginx", "-g", "daemon off;"]

FROM ubuntu:14.04
MAINTAINER "korea-lee <hyunyong.lee@ocmkorea.com>"
LABEL "purpose"="practice"
RUN apt-get update
RUN apt-get install apache2 -y
ADD ./test.html /var/www/html
WORKDIR /var/www/html
RUN ["/bin/bash", "-c", "echo"]
