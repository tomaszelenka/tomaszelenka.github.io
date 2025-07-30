# Personal Website – tomaszelenka.cz

This repository contains the source code for my personal website [tomaszelenka.cz](https://tomaszelenka.cz).

The website is:
- **Built automatically** using **GitHub Actions**.
- Packaged into a **Docker image** with Nginx for easy deployment or testing.
- Deployed via **GitHub Pages** (static hosting).

### Docker Image

Each update is also built as a Docker image and published to [Docker Hub](https://hub.docker.com/r/zelenkatomas/personal-web) with tags:
- `latest` – most recent version
- `<build-number>-<short-sha>` – unique build identifiers for rollback/debug

You can pull the image with:
```bash
docker pull zelenkatomas/personal-web:latest
