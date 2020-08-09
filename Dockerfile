FROM haloislet/coscmd:1.8.6.17-slim

COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["bash", "/entrypoint.sh"]