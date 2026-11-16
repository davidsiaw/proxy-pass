FROM nginx:1.30.5-alpine
LABEL maintainer="David Siaw <davidsiaw@gmail.com>"

# The upstream nginx image is only rebuilt every so often, so Alpine security
# fixes can sit unapplied for days. Pick them up at build time.
RUN apk upgrade --no-cache

ENV VIRTUAL_HOST=example.example.com
ENV TARGET_HOST=example.com

COPY conf.template /conf.template
COPY start.sh /start.sh

EXPOSE 80

CMD ["sh", "/start.sh"]
