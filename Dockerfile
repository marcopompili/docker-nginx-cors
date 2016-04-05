FROM emarcs/debian-minit:jessie

MAINTAINER Marco Pompili "docker@emarcs.org"

RUN apt-get -qq update \
	  && apt-get install -y \
    ca-certificates \
    gettext-base \
    nginx-extras \
	  && rm -rf /var/lib/apt/lists/*

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80 443

COPY startup /etc/minit/
