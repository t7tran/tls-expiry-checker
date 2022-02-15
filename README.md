# tls-expiry-checker

Checking TLS certificate expiration before expiry date.

The script uses `openssl` and supports verifying origin TLS certificates of those servers hosted behind Cloudflare.

```
# See all outputs
docker-compose run checker
# See only stdout
docker-compose run -T checker 2>/dev/null
# See only stderr or disable VERBOSE
docker-compose run -T checker 1>/dev/null
```

Check exit code by `echo $?` right after running each command.

See `docker-compose.yml` for more options.
