# MulmoCast Docker Setup

Dockerized version of MulmoCast CLI for easy deployment and usage.

## Quick Start

1. **Clone this repository**
```bash
git clone <your-repo>
cd mulmocast-cli-docker
```

2. **Set up environment variables**
```bash
cp .env.example .env
# Edit .env and add your OpenAI API key
```

3. **Build and run the container**
```bash
docker-compose build
docker-compose up -d
```

4. **Enter the container**
```bash
docker-compose exec mulmocast bash
```

## Usage Examples

### Generate audio from sample script
```bash
mulmo audio /app/scripts/sample-script.json
```

### Generate images
```bash
mulmo images /app/scripts/sample-script.json
```

### Create a video
```bash
mulmo movie /app/scripts/sample-script.json
```

### Generate a new script interactively
```bash
mulmo tool scripting -i
```

## Directory Structure
- `/app/scripts/` - Place your MulmoScript JSON files here
- `/app/output/` - Generated content will be saved here

## Notes
- Output files are saved to the `output/` directory on your host machine
- The container includes ffmpeg for video processing
- Make sure to set at least the OPENAI_API_KEY in your .env file