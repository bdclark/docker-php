FROM buildpack-deps:jessie-curl

RUN apt-get update && apt-get install -y --no-install-recommends \
  php5-cli \
  php5-curl \
  php5-intl \
  php5-mongo \
  php5-mysqlnd \
  php5-readline \
  php5-xdebug \
  php5-xsl \
  && rm -rf /var/lib/apt/lists/*

COPY php_additional.ini /etc/php5/cli/conf.d/

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

CMD ["php", "-a"]
