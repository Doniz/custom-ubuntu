FROM ubuntu:16.04

RUN apt-get install software-properties-common
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update
	&& apt-get upgrade -y
RUN apt-get install -y php5.6 php5.6-fpm php5.6-mbstring \
	php5.6-mcrypt php5.6-mysql php5.6-xml php5.6-cli nginx \
	nodejs npm

ENTRYPOINT ["/bin/bash"]