# ===== file: 03-install-caddy.sh =====
#!/usr/bin/env bash
set -euo pipefail
if ! command -v caddy >/dev/null 2>&1; then
  apt-get install -y debian-keyring debian-archive-keyring apt-transport-https
  curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/gpg.key' | tee /usr/share/keyrings/caddy-stable-archive-keyring.gpg >/dev/null
  curl -1sLf 'https://dl.cloudsmith.io/public/caddy/stable/debian.deb.txt' | tee /etc/apt/sources.list.d/caddy-stable.list >/dev/null
  apt-get update
  apt-get -y install caddy
fi
systemctl enable caddy
systemctl start caddy
echo "Caddy installed and running."
