FROM ghcr.io/cerbos/cerbos:0.20.0
ARG PORT
COPY config.disk.prod.yaml /tmp/authz/config.yaml
COPY policies /tmp/authz/policies
CMD ["server", "--config","/tmp/authz/config.yaml", "--set","server.httpListenAddr=0.0.0.0:${PORT}"]