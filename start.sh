#!/bin/sh
envsubst < /conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'
