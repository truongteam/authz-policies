FROM ghcr.io/cerbos/cerbos:0.18.0
ARG PORT
COPY policies /tmp/authz/policies
CMD ["cerbos", "server", "--config","/tmp/authz/config.yaml", "--set","server.httpListenAddr=:${PORT}"]