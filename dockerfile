FROM ghcr.io/shadowsocks/shadowsocks-libev:latest

ENV PASSWORD=password123
ENV METHOD=chacha20-ietf-poly1305
ENV PLUGIN=obfs-server
ENV PLUGIN_OPTS=obfs=tls;host=facebook.com

CMD ss-server -s 0.0.0.0 -p 443 -k ${PASSWORD} -m ${METHOD} --plugin ${PLUGIN} --plugin-opts ${PLUGIN_OPTS}