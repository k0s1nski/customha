ARG BUILD_FROM=home-assistant/builder@2025.03.0
FROM $BUILD_FROM

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache dnsmasq hostapd

RUN ln -sf /bin/bash /usr/bin/bash

# Copy data
COPY --chmod=0755 rootfs /
