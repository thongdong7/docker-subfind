# Overview

This docker container run every hour to search for new subtitles.

# Usage

## docker-compose

Open `subfind.yml`, and config your languages. Sample `subfind.yml`


```yaml
src: [/data/movies, /data/tv-shows]
lang: [vi, en]
force: false
remove: false
verbose: false
```

Open `docker-compose.yml` and config your movies folder. Sample `docker-compose.yml`

```yaml
app:
  build: .
  volumes:
    - ./subfind.yml:/subfind.yml:ro
    # Mount movies, tv-shows folder into /data folders
    - /data2/movies:/data/movies
    - /data2/tv-shows:/data/tv-shows
  log_opt:
    max-size: 10k
  restart: always
```

Run

```
docker-compose up -d
```
