FROM node:18-bullseye-slim

# Install Chromium and minimal deps required by Puppeteer/Chromium
RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    chromium \
    ca-certificates \
    fonts-liberation \
    libnss3 \
    libxss1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libgtk-3-0 \
  && rm -rf /var/lib/apt/lists/*

# Tell Puppeteer not to download Chromium (we installed system package)
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
ENV CHROME_BIN=/usr/bin/chromium

# Install resume-cli, the theme, and a compatible Puppeteer version
RUN npm install -g resume-cli puppeteer@20.8.1

# Use non-root directory for build files
WORKDIR /build
COPY . /build

# Install the chosen theme into the project so resume-cli (run from /build)
# can resolve it via Node's module resolution.
RUN npm --prefix /build install --no-save jsonresume-theme-onepage

# Export index.html using the existing resume.json and the kendall theme.
# Avoid `resume init` (interactive) — we assume `resume.json` is present.
RUN [ -f resume.json ] && cd /build && resume export index.html -t onepage || (echo "resume.json not found" && false)

