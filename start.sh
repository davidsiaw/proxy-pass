#!/bin/sh
DOLLAR=$ envsubst < /conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
