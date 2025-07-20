#!/usr/bin/with-contenv bash
# ==============================================================================
# DNSMASQ and HOSTAPD config
# ==============================================================================
source /usr/lib/bashio/bashio.sh

DNS_CONFIG="/etc/dnsmasq.conf"
bashio::log.info "Configuring dnsmasq..."
tempio \
    -conf /data/options.json \
    -template /usr/share/tempio/dnsmasq.config \
    -out "${DNS_CONFIG}"
