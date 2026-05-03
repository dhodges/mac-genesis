# SSH Tunnel Fix for japan-local MLX Server

**Cause:** macOS 26 blocks raw TCP connections from non-Apple-signed binaries (including Homebrew Node.js) to non-gateway local network hosts. Node.js gets `EHOSTUNREACH` for `192.168.86.29` even though curl and ping work fine. Re-signing the node binary doesn't help — CLI tools without an `Info.plist`/`NSLocalNetworkUsageDescription` cannot trigger the Local Network permission dialog.

**Solution:** A launchd agent (`~/Library/LaunchAgents/com.local.mlx-tunnel.plist`) tunnels `127.0.0.1:11437 → 192.168.86.29:11437` via system SSH (Apple-signed, unrestricted). `models.json` points at `http://127.0.0.1:11437/v1` so Node connects to localhost instead.

The tunnel starts at login and auto-restarts on failure (`KeepAlive=true`). To manage it manually:

```bash
launchctl unload ~/Library/LaunchAgents/com.local.mlx-tunnel.plist   # stop
launchctl load   ~/Library/LaunchAgents/com.local.mlx-tunnel.plist   # start
cat /tmp/mlx-tunnel.err                                               # check errors
```
