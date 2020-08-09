FROM python:3.9-rc-slim

RUN pip install --upgrade --disable-pip-version-check --no-cache-dir coscmd
COPY "entrypoint.sh" "/entrypoint.sh"

ENTRYPOINT ["bash", "/entrypoint.sh"]