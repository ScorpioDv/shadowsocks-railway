FROM shadowsocks/shadowsocks-libev

ENV PASSWORD=${PASSWORD}
ENV METHOD=${METHOD}
ENV PLUGIN=${PLUGIN}
ENV PLUGIN_OPTS=${PLUGIN_OPTS}

CMD ss-server -s 0.0.0.0 -p 443 -k $PASSWORD -m $METHOD --plugin $PLUGIN --plugin-opts $PLUGIN_OPTS