# Docker Quick Start

## 1) Prepare env file

Copy the template and set your token:

```bash
cp .env.docker.example .env.docker
```

Required:

- `PAT_1` must be set to a valid GitHub Personal Access Token.

## 2) Build and run

```bash
docker compose up -d --build
```

## 3) Verify

```bash
curl "http://localhost:9000/api?username=your_github_username"
```

## 4) Use in your README

Replace:

```text
https://github-readme-stats.vercel.app/api?username=your_github_username
```

With:

```text
http://your-server-domain-or-ip:9000/api?username=your_github_username
```

For production, put Nginx/Caddy in front and use HTTPS.
