FROM ghcr.io/cerbos/cerbos:0.18.0
ARG PORT
COPY config.yaml /tmp/authz/config.yaml
COPY policies /tmp/authz/policies
CMD ["server", "--config","/tmp/authz/config.yaml", "--set","server.httpListenAddr=0.0.0.0:${PORT}"]