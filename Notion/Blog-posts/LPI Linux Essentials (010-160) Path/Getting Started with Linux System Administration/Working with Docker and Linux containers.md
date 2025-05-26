## Understanding the Docker ecosystem

A sample Dockerfile

```Shell
FROM ubunty:latest

RUN apt-get update
RUN apt-get install -y apache2
RUN echo "Welcome to my website" > /var/www/html/index.html
EXPOSE 80
```

Run ubuntu in Docker

```Shell
$ sudo docker run -it ubuntu bash
```

## Building a customized Docker image

Create a Dockerfile

```Shell
FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
RUN echo "Welcome to my website" > /var/www/html/index.html
CMD /usr/sbin/apache2ctl -D FOREGROUND
EXPOSE 80
```

Build the image

```Shell
$ sudo docker build -t webserver .
```

Run a container from image

```Shell
$ sudo docker run -d -p 80:80 webserver
```

Check the running container

```Shell
$ curl localhost
```

Search for images on dockerhub

```Shell
$ docker search nextcloud
```

Push an image to dockerhub

```Shell
$ docker tag webserver vkardaras/webserver

$ docker push vkardaras/webserver
```