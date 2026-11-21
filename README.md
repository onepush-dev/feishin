# Feishin on Railway

[Feishin](https://github.com/jeffvli/feishin) (GPL-3.0) — a modern, fast web music player for Navidrome, Jellyfin and OpenSubsonic/Subsonic servers: queues, lyrics, smart playlists, scrobbling and themes. Deploy the web version on Railway with one click.

[![Deploy on Railway](https://railway.com/button.svg)](https://railway.com/deploy/7pKeZv)

## What this template runs

- **feishin**: `ghcr.io/onepush-dev/feishin:1.17.0`, the official `ghcr.io/jeffvli/feishin:1.17.0` web image (static app on nginx-unprivileged, app unmodified). nginx listens on 8080 instead of 9180; no database, no volume (settings live in your browser).

## Variables

None are required. Baked in: `ANALYTICS_DISABLED=true` (no Umami tracking). Optional, add them on the service to pre-set a server for everyone:

| Variable | Example | Notes |
|---|---|---|
| `SERVER_NAME` | `My Navidrome` | Display name of the pre-defined server. |
| `SERVER_TYPE` | `navidrome` | `navidrome`, `jellyfin` or `subsonic`. |
| `SERVER_URL` | `https://music.example.com` | Must be HTTPS (the player is served over HTTPS). |
| `SERVER_LOCK` | `true` | Only username/password can be changed when name, type and URL are set. |
| `LEGACY_AUTHENTICATION` | `false` | Subsonic legacy auth when `SERVER_LOCK=true`. |

## How to use

1. Deploy and open the domain.
2. Add your Navidrome, Jellyfin or Subsonic server (HTTPS URL) and sign in with your music server account.

Feishin is a client only; you need your own music server. Not affiliated with Feishin.
