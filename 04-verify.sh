# ===== file: 04-verify.sh =====
#!/usr/bin/env bash
set -euo pipefail
echo "Verifying installations..."
python --version
pip --version
gcc --version
caddy version
echo "All tools verified."
