- [ ] Generate/obtain a Monero wallet address you control:
      1. Open the official Monero GUI wallet you installed.
      2. Unlock it with your password if prompted.
      3. Click the "Receive" tab on the left sidebar.
      4. Under "Primary address" click the copy icon; the string starting with `4` or `8` is your wallet address.
      5. Write down the 25-word seed shown when you first created the wallet (store it offline).
- [ ] Copy `config.template.json` to `config.json` so your local settings stay untracked.
- [ ] Replace `REPLACE_WITH_YOUR_MONERO_WALLET` in `config.json` with the address above.
- [ ] Pick a pool: open `config.json`, set `"url"` to one of the pool endpoints below, and add `"tls": true` if the port is 443.
      * SupportXMR (TLS): `pool.supportxmr.com:443` (remember `"tls": true`)
      * SupportXMR (no TLS): `pool.supportxmr.com:3333` (you can drop `"tls"` or set it to false)
- [ ] (Optional) Adjust rig ID or thread count in `config.json` to match your preferences.
- [ ] Start mining by running `./mine.sh` from this directory and monitor CPU temps and accepted shares.
