# Testnet-Lite Monitoring Cheatsheet

Start the packaged `testnet-lite` node from the repo root:

```bash
docker-compose -f docker-compose.yml up -d testnet-lite
```

Keep an eye on the container with these commands:

- Ensure it is running:
  ```bash
  docker ps --filter name=subtensor-testnet-lite --format '{{.Names}}\t{{.Status}}'
  ```
- Watch sync progress and peer count:
  ```bash
  docker logs -f subtensor-testnet-lite
  ```
- Grab a quick status line:
  ```bash
  docker logs --tail 20 subtensor-testnet-lite | tail -1
  ```
- Check resource usage:
  ```bash
  docker stats --no-stream subtensor-testnet-lite
  ```
- Inspect the running process arguments:
  ```bash
  docker top subtensor-testnet-lite
  ```

Optional visual dashboard: open https://polkadot.js.org/apps and connect to `ws://127.0.0.1:9944`.

Shut the node down when finished:

```bash
docker-compose -f docker-compose.yml down
```
