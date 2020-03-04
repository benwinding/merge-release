FROM node:12-slim

COPY LICENSE README.md /

RUN apt-get update && apt-get -y --no-install-recommends install git && rm -rf /var/lib/apt/lists/* 

RUN echo 'benwinding / merge-release'

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
