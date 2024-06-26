FROM alpine:3.19
ARG VERSION=1.7.6
RUN apk add --no-cache gzip curl
RUN curl -sSL https://github.com/jpillora/chisel/releases/download/v1.7.6/chisel_${VERSION}_linux_amd64.gz | zcat > /bin/chisel
RUN chmod +x /bin/chisel
ENTRYPOINT [ "/bin/chisel" ]
