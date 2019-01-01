[Git Repo](https://code.nephatrine.net/nephatrine/docker-dokuwiki) |
[DockerHub](https://hub.docker.com/r/nephatrine/dokuwiki/) |
[unRAID Template](https://github.com/nephatrine/unraid-docker-templates)

# DokuWiki Container

This docker container manages the DokuWiki application, a lightweight flat-file wiki.

- [DokuWiki](https://www.dokuwiki.org/dokuwiki)

## Configuration

- ``{config}/etc/crontab``: Crontab Entries
- ``{config}/etc/logrotate.conf``: Logrotate General Configuration
- ``{config}/etc/logrotate.d/*``: Logrotate Per-Application Configuration
- ``{config}/etc/mime.types``: NGINX MIME Types
- ``{config}/etc/nginx.conf``: NGINX General Configuration
- ``{config}/etc/nginx.d/*``: NGINX Per-Site Configuration
- ``{config}/etc/php.d/*``: PHP Extension Configuration
- ``{config}/etc/php.ini``: PHP General Configuration
- ``{config}/etc/php-fpm.conf``: PHP-FPM General Configuration
- ``{config}/etc/php-fpm.d/*``: PHP-FPM Per-Site Configuration
- ``{config}/ssl/live/{site}/``: SSL/TLS certificates
- ``{config}/www/dokuwiki/conf/*``: DokuWiki Configuration
- ``{config}/www/dokuwiki/data/pages/*``: DokuWiki Pages
- ``{config}/www/dokuwiki/lib/plugins/*``: DokuWiki Plugins
- ``{config}/www/dokuwiki/lib/tpl/*``: DokuWiki Templates

**If you cannot access the installation URL (``{url}/install.php``), check access rules in ``{config}/etc/nginx.d/default.conf``.**

Certbot is included for requestung SSL certificates but you are better off just enabling HTTP from these containers and then using a single [docker-nginx-ssl](https://code.nephatrine.net/nephatrine/docker-nginx-ssl) container as a reverse proxy and handling all the HTTPS/SSL configuration there.

## Ports

- **80/tcp:** HTTP Port
- **443/tcp:** HTTPS Port

## Variables

- **PUID:** Owner UID (*1000*)
- **PGID:** Owner GID (*100*)
- **TZ:** Time Zone (*"America/New_York"*)

- **DNSADDR:** Resolver IPs ("8.8.8.8 8.8.4.4") (IGNORED AFTER INITIAL RUN) (SPACE-DELIMITED)

- **ADMINIP**: Administrator IP ("127.0.0.1") (IGNORED AFTER INITIAL RUN)
- **TRUSTSN:** Trusted Subnet ("192.168.0.0/16") (IGNORED AFTER INITIAL RUN)

- **SSLEMAIL:** LetsEncrypt Email ("")
- **SSLDOMAINS:** LetsEncrypt Domains ("") (COMMA-DELIMITED)

## Mount Points

- **/mnt/config:** Configuration/Logs