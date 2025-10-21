# ===== file: 00-update-upgrade.sh =====
#!/usr/bin/env bash
set -euo pipefail
export DEBIAN_FRONTEND=noninteractive
apt-get update && apt-get -y upgrade
apt-get -y install ca-certificates curl git ufw lsb-release apt-transport-https gnupg
echo "System updated."
