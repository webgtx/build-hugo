FROM ghcr.io/hugomods/hugo:exts-0.127.0
COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
