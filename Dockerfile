# ============================================================================
#   👑 YAMZZBOT WHATSAPP CALLER - PTERODACTYL DOCKER IMAGE 👑
# ============================================================================

FROM golang:1.25-alpine AS builder

# Install system dependencies
RUN apk add --no-cache \
    git \
    gcc \
    musl-dev \
    ffmpeg \
    yt-dlp

WORKDIR /app

# Copy Go modules first for better caching
COPY go.mod go.sum ./
RUN go mod download

# Copy all source code
COPY . .

# Build the bot
RUN go build -o yamzzbot .

# ============================================================================
# Final runtime image
FROM alpine:latest

# Install runtime dependencies
RUN apk add --no-cache \
    ca-certificates \
    ffmpeg \
    yt-dlp \
    nodejs \
    npm

WORKDIR /app

# Copy binary from builder
COPY --from=builder /app/yamzzbot .

# Copy Node.js wrapper and config
COPY package.json index.js ./
COPY meowcaller ./meowcaller

# Install Node.js dependencies
RUN npm install --production

# Create data directory
RUN mkdir -p /app/data

# Expose ports
EXPOSE 3000 20825

# Health check
HEALTHCHECK --interval=30s --timeout=10s --start-period=5s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:3000/health || exit 1

# Start bot via Node.js wrapper
CMD ["node", "index.js"]
