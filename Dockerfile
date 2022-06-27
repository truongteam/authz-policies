FROM ghcr.io/cerbos/cerbos:0.18.0
EXPOSE 3592
COPY policies /tmp/authz/policies
COPY config.yaml /tmp/authz/config.yaml