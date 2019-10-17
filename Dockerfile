FROM alpine:edge

RUN apk update && apk add --no-cache \
    ca-certificates \
    links \
    && addgroup links \
    && adduser -G links -s /bin/sh -D links

USER links

ENTRYPOINT ["links"]

LABEL org.opencontainers.image.title="links" \
    org.opencontainers.image.description="links in Docker" \ 
    org.opencontainers.image.url="https://github.com/westonsteimel/docker-links" \ 
    org.opencontainers.image.source="https://github.com/westonsteimel/docker-links"
