#!/usr/bin/with-contenv bashio
# ==============================================================================
# DNSMASQ config
# ==============================================================================

bashio::log.info "Configuring dnsmasq..."

test1=$(bashio::config 'dhcp_range')
bashio::log.cyan "Range: $(test1)"

# tempio \
#     -conf /data/options.json \
#     -template /usr/share/tempio/dnsmasq.config \
#     -out /etc/dnsmasq.conf

