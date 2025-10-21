# ===== file: 01-install-python.sh =====
#!/usr/bin/env bash
set -euo pipefail
PYVER="${1:-3.11}"
apt-get -y install "python${PYVER}" "python${PYVER}-venv" python3-pip python3-dev
update-alternatives --install /usr/bin/python python "/usr/bin/python${PYVER}" 1
echo "Python ${PYVER} installed."
