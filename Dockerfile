FROM wordpress:4.9.8

RUN pecl install -f xdebug \
	&& echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini \
	&& rm -rf /tmp/*

ENV XDEBUG_CONFIG="remote_host=host.docker.internal remote_port=9000 remote_enable=1"