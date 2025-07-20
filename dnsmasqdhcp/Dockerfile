FROM home-assistant/builder:2025.03.0

# Add env
ENV LANG C.UTF-8

# Setup base
RUN apk add --no-cache dnsmasq hostapd

# Copy data
COPY --chmod=0755 rootfs /
