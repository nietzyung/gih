# ===== file: 02-install-build-essentials.sh =====
#!/usr/bin/env bash
set -euo pipefail
apt-get -y install build-essential pkg-config gcc make libffi-dev libssl-dev zlib1g-dev libpq-dev libjpeg-turbo8-dev
echo "Build tools and headers installed."
