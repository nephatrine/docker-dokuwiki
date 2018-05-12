[GitHub](https://github.com/nephatrine/docker-dokuwiki) |
[DockerHub](https://hub.docker.com/r/nephatrine/dokuwiki/) |
[unRAID](https://github.com/nephatrine/unraid-docker-templates)

# DokuWiki Docker

This docker runs the [DokuWiki](https://www.dokuwiki.org/dokuwiki) flat-file wiki. You will need to
run the installer at /install.php in your URL. The NGINX config has this only accessible from
192.168.0.0/16 as a hopefully "safe" default, but you should change this to whatever subnet you use
to connect locally from (or remove it and accept the consequences if you need to connect remotely).

Certbot (LetsEncrypt) is installed to handle obtaining SSL certs in case this is your only web
docker. If you plan on hosting multiple applications/dockers, though I suggest having one
[nginx-ssl](https://hub.docker.com/r/nephatrine/nginx-ssl/) docker that is publicly visible and
handles the SSL certs for all domains. That docker can then proxy all your other nginx dockers
which would actually be running on non-public IPs under plain HTTP.

## Settings

- **DNSADDR:** DNS IPs (space-delimited)
- **PUID:** Volume Owner UID
- **PGID:** Volume Owner GID
- **SSLEMAIL:** LetsEncrypt Email Address
- **SSLDOMAINS:** LetsEncrypt (Sub)domains (comma-delimited)
- **TZ:** Time Zone

## Mount Points

- **/mnt/config:** Configuration Volume