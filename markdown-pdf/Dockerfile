# Phantom prebuilt version is not supported on Apline.
# See https://github.com/gliderlabs/docker-alpine/blob/master/docs/caveats.md
# FROM node:7-alpine
FROM node:9.11.1

# Append --unsafe-perm to fix permission issue
RUN npm install --global --unsafe-perm markdown-pdf

# Install Google Lato font
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
        fonts-lato \
        && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


WORKDIR /wd
