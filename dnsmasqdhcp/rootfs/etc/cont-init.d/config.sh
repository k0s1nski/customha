#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# ==============================================================================
# DNSMASQ and HOSTAPD config
# ==============================================================================

DNS_CONFIG="/etc/dnsmasq.conf"
bashio::log.info "Configuring dnsmasq..."
tempio \
    -conf /data/options.json \
    -template /usr/share/tempio/dnsmasq.config \
    -out "${DNS_CONFIG}"

HOSTAPD_CONFIG="/etc/hostapd/hostapd.conf"
bashio::log.info "Configuring hostapd..."
tempio \
    -conf /data/options.json \
    -template /usr/share/tempio/hostapd.config \
    -out "${HOSTAPD_CONFIG}"
