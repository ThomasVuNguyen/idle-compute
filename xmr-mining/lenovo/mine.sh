#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
XM_RIG_BIN="${ROOT_DIR}/xmrig/build/xmrig"
CONFIG_FILE="${ROOT_DIR}/config.json"

if [[ ! -x "${XM_RIG_BIN}" ]]; then
  echo "Error: xmrig binary not found at ${XM_RIG_BIN}."
  echo "Run the build steps in TODO.md before starting mining."
  exit 1
fi

python3 - "${CONFIG_FILE}" <<'PYCHECK'
import json, pathlib, sys
cfg = pathlib.Path(sys.argv[1])
try:
    with cfg.open() as fh:
        data = json.load(fh)
except FileNotFoundError:
    print(f"Error: {cfg} missing.")
    sys.exit(1)
except json.JSONDecodeError as err:
    print(f"Error: config.json invalid JSON ({err}).")
    sys.exit(1)
if "REPLACE_WITH_YOUR_MONERO_WALLET" in json.dumps(data):
    print("Error: config.json still contains the placeholder wallet address.")
    sys.exit(1)
PYCHECK

exec "${XM_RIG_BIN}" -c "${CONFIG_FILE}"
