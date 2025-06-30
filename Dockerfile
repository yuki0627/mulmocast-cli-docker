FROM node:20-slim

# Install ffmpeg and other dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install mulmocast globally
RUN npm install -g mulmocast

# Create working directory
WORKDIR /app

# Create output directory
RUN mkdir -p /app/output

# Set environment to production
ENV NODE_ENV=production

# Default command
CMD ["mulmo", "--help"]