#!/usr/bin/with-contenv bashio
# ==============================================================================
# DNSMASQ config
# ==============================================================================

CONFIG="/etc/dnsmasq.conf.example"
bashio::log.info "Configuring dnsmasq..."
cat /data/options.json
tempio \
    -conf /data/options.json \
    -template /usr/share/tempio/dnsmasq.config \
    -out "${CONFIG}"

