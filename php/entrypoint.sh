#!/bin/bash
set -e

if [ "$PHP_XDEBUG" = true ]; then php5enmod xdebug; fi

exec "$@"
