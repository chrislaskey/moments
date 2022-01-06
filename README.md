# Moments

> ### Document moments from every day life

Built in Elixir, Phoenix, LiveView, and Tailwind CSS.

## Getting started

Clone the project locally. Create a copy of the environmental variables:

```bash
cp .env.example .env
```

Edit `.env` and configure values.

```bash
vim .env
```

Get `mix` dependencies:

```bash
mix deps.get
```

Start the server:

```bash
bin/start
```

## Building with Docker

Build an image:

```bash
bin/docker-build
```

Once done, the `moments:latest` build will be available in Docker.

An example of a deploying with Docker Compose with a `docker-compose.yml` file:

```yaml
version: '2'

services:
  moments:
    container_name: moments
    image: moments:latest
    ports:
      - "4000:4000/tcp"
    environment:
      MOMENTS_DOMAIN: "moments"
      MOMENTS_PORT: "4000"
      MOMENTS_DATABASE_PATH: "/home/elixir/app/data/moments.prod.db"
      MOMENTS_DATABASE_POOL_SIZE: 5
      MOMENTS_SECRET_KEY_BASE: "8Hv5G4DVP0+nWYeWtoTFEmhfrkME0umdO4WLJUN0bI/OYYgc1dmFF6j+shkvsOJA"
      PIHOLE_API_AUTH_TOKEN: "16f5b354545357fd02f2b66800a4f59a475fedc1329fa3ee7276d0056b04191b"
      PIHOLE_API_DOMAIN: "pihole.home"
    restart: unless-stopped
```
