FROM alpine:edge

# 1. Install system dependencies for Chromium and Node
RUN apk add --no-cache \
    nodejs \
    npm \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont

# 2. Set environment variables for Puppeteer
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

WORKDIR /app

# 3. Install resume-cli GLOBALLY so the command 'resume' is in your PATH
# 4. Install the theme LOCALLY so the CLI can find it in ./node_modules
RUN npm install -g resume-cli --unsafe-perm && \
    npm install jsonresume-theme-simplyelegant

# 5. Copy your resume data
COPY resume.json .

# 6. Run export (CLI will now see the theme in /app/node_modules)
RUN resume export index.html -t simplyelegant