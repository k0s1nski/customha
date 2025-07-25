# Home Assistant Add-on: Dnsmasq

## Installation

Follow these steps to get the add-on installed on your system:

1. Navigate in your Home Assistant frontend to **Settings** -> **Add-ons** -> **Add-on store**.
2. Find the "Dnsmasq" add-on and click it.
3. Click on the "INSTALL" button.

## How to use

The add-on has a couple of options available. For more detailed instructions
see below. The basic thing to get the add-on running would be:

1. Start the add-on.

## Configuration

The Dnsmasq add-on can be tweaked to your likings. This section
describes each of the add-on configuration options.

Example add-on configuration:

```yaml
defaults:
  - 8.8.8.8
  - 8.8.4.4
forwards:
  - domain: mystuff.local
    server: 192.168.1.40
hosts:
  - host: home.mydomain.io
    ip: 192.168.1.10
services:
  - srv: _ldap._tcp.pdc._msdcs.mydomain.io
    host: dc.mydomain.io
    port: 389
    priority: 0
    weight: 100
log_queries: false
```

### Option: `defaults` (required)

The defaults are upstream DNS servers, where DNS requests that can't
be handled locally, are forwarded to. By default it is configured to have
Google's public DNS servers: `"8.8.8.8", "8.8.4.4"`.

Port can be specified using # separator, eg. `"192.168.1.2#1053"`

### Option: `forwards` (optional)

This option allows you to list domain that are forwarded to a different
(not the default) upstream DNS server.

#### Option: `forwards.domain`

The domain to forward to a different upstream DNS server.

#### Option: `forwards.server`

The DNS server to forward the request for this domain to.

### Option: `hosts` (optional)

This option allows you to provide local static answer for your DNS server.

This is helpful for making addresses resolve on your internal network and
even override external domains to be answered with a local address.

For example, one could set `myuser.duckdns.org` to resolve directly to a
internal IP address, e.g., `192.168.1.10`. While outside of this network,
it would resolve normally.

This option allows you to create a so called: Split DNS.

#### Option: `hosts.host`

The hostname or domainname to resolve locally.

#### Option: `hosts.ip`

The IP address Dnsmasq should respond with in its DNS answer.

### Option: `services` (optional)

This option allows you to provide srv-host records.

#### Option: `services.srv`

The service to resolve.

#### Option: `services.host`

The host that contain the service.

#### Option: `services.port`

The port number for the service.

#### Option: `services.priority`

The priority for the service.

#### Option: `services.weight`

The weight for the service.

### Option: `cnames` (optional)

This option allows you to provide cname records.

#### Option: `cnames.name`

The name to resolve.

#### Option: `cnames.target`

The target name. Note that this only works for targets which are names from DHCP or /etc/hosts. Give host "bert" another name, bertrand cname=bertand,bert

### Option: `log_queries` (required) 

Log all DNS requests. Defaults to `false`.

### Option: `cache_size`

Sets the size of the Dnsmasq cache. The default setting is 150. If this is set to 0 this disables caching. Note that huge cache sizes can create performance problems.

## Support

Got questions?

You have several options to get them answered:

- The [Home Assistant Discord Chat Server][discord].
- The Home Assistant [Community Forum][forum].
- Join the [Reddit subreddit][reddit] in [/r/homeassistant][reddit]

In case you've found a bug, please [open an issue on our GitHub][issue].

[discord]: https://discord.gg/c5DvZ4e
[forum]: https://community.home-assistant.io
[issue]: https://github.com/home-assistant/addons/issues
[reddit]: https://reddit.com/r/homeassistant
[repository]: https://github.com/hassio-addons/repository
