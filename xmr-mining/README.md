# XMR Mining (Lenovo)

This repo packages an XMRig build plus helper scripts so you can point spare CPU cycles at Monero mining without hunting down commands each time.

## Requirements
- 64-bit Linux host with a CPU that supports AES-NI (most modern laptops/desktops).
- `git`, `cmake`, `build-essential`, `libssl-dev`, `libuv1-dev`, `libhwloc-dev` (optional but recommended), `pkg-config`.

Install the dependencies on Debian/Ubuntu:
```bash
sudo apt-get update
sudo apt-get install -y git cmake build-essential libssl-dev libuv1-dev libhwloc-dev pkg-config
```

> If you cannot or do not want to install `libhwloc-dev`, the provided build flags disable hwloc; you will still be able to mine.

## Setup
1. Clone the project and enter it:
   ```bash
   git clone https://github.com/your-user/xmr-mining-lenovo.git
   cd xmr-mining-lenovo
   ```

2. Fetch XMRig sources:
   ```bash
   git submodule update --init --recursive
   ```
   (If you are not using Git submodules, you can instead run `git clone https://github.com/xmrig/xmrig.git` manually inside this folder.)

3. Build XMRig with the helper script:
   ```bash
   cd xmrig
   cmake -S . -B build -DXMRIG_DEPS=ON -DCMAKE_BUILD_TYPE=Release -DWITH_HWLOC=OFF
   cmake --build build -j$(nproc)
   cd ..
   ```

4. Create your local config:
   ```bash
   cp config.template.json config.json
   ```

5. Generate a Monero wallet (official GUI or Feather). In the GUI:
   - Open the wallet and unlock it.
   - Go to the **Receive** tab.
   - Click the copy icon next to **Primary address**.
   - Paste that address into `config.json` replacing `REPLACE_WITH_YOUR_MONERO_WALLET`.
   - Save your 25-word recovery seed offline.

6. Pick a mining pool. The template uses SupportXMR over TLS:
   ```json
   "url": "pool.supportxmr.com:443",
   "tls": true
   ```
   You can switch to any other Monero pool by editing the `"url"` and `"tls"` values.

7. Fire up the miner:
   ```bash
   ./mine.sh
   ```
   The script checks that `config.json` is valid and launches XMRig with your settings.

## Tips
- Watch system temperatures—laptops throttle quickly without extra cooling.
- Adjust thread count or affinity in `config.json` if you need the system to stay responsive.
- Keep `config.json` out of version control; it contains your public wallet address.
- Donations/support can be re-enabled by changing `"donate-level"`.

Happy hashing!
