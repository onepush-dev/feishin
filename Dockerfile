# Feishin on Railway: the official ghcr.io/jeffvli/feishin:1.17.0 web image (GPL-3.0), app unmodified.
# Railway layer: nginx listens on 8080 (Railway's PORT) instead of 9180, and Umami analytics are
# off by default. Point it at your own Navidrome / Jellyfin / Subsonic server with SERVER_* variables.
FROM ghcr.io/jeffvli/feishin:1.17.0
LABEL org.opencontainers.image.source="https://github.com/onepush-dev/feishin"
COPY --chown=nginx:nginx railway/default.conf.template /etc/nginx/templates/default.conf.template
ENV ANALYTICS_DISABLED=true
EXPOSE 8080
