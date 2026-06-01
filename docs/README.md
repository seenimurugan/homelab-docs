# Homelab Knowledge Base

Everything about the self-hosted apps running on the homelab. Each app has its own folder with a README, user manual, maintenance runbook, and reference configs.

**On this page:** [Quick access](#quick-access) · [Apps](#apps) · [How this docs site works](#how-this-docs-site-works)

## Quick access

- 📸 [Immich — photos](https://immich.stoat-perch.ts.net ':target=_blank')
- 🎬 [Jellyfin — movies & TV](https://jellyfin.stoat-perch.ts.net ':target=_blank')
- 🥕 [Grocy — household inventory](https://grocy.stoat-perch.ts.net ':target=_blank')
- 🧹 [Chores — kids' chore tracker](https://chores.stoat-perch.ts.net ':target=_blank')
- 📁 [FileBrowser — documents](https://files.stoat-perch.ts.net ':target=_blank')
- ⏰ [Reminders — expiry tracker](https://reminders.stoat-perch.ts.net ':target=_blank')
- 📧 [Email × Company Matrix](https://emailmatrix.stoat-perch.ts.net ':target=_blank')
- 🎞 [Moviesda scraper](https://movies.stoat-perch.ts.net ':target=_blank')
- 📊 [Grafana — monitoring](https://grafana.stoat-perch.ts.net ':target=_blank')
- 📖 [Docs site](https://docs.stoat-perch.ts.net ':target=_blank')

## Apps

| App | What it does |
|---|---|
| [Homelab Cluster](homelab-k8s-setup/README.md) | k3s cluster on OrbStack — storage, networking, Tailscale, and all app deployments |
| [Chores](homelab-k8s-setup/apps/chores/README.md) | Kids' chore tracker with admin + per-kid logins and completion-rate graphs |
| [Email × Company Matrix](homelab-k8s-setup/apps/emailmatrix/README.md) | Tracks which personal email addresses are registered with which companies — matrix view with live checkbox toggles |
| [Grocy](homelab-k8s-setup/apps/grocy/README.md) | Self-hosted household ERP — pantry/fridge/freezer stock, expiry dates, shopping lists, and recipes |
| [Immich](homelab-k8s-setup/apps/immich/README.md) | Self-hosted Google Photos replacement with AI face recognition, smart search, and mobile auto-backup |
| [Jellyfin](homelab-k8s-setup/apps/jellyfin/README.md) | Self-hosted media server for movies, TV shows, and music — streams to phones, TVs, and browsers |
| [Shared Postgres](homelab-k8s-setup/apps/shared-postgres/README.md) | PostgreSQL 17 StatefulSet shared by all custom apps — each app gets its own DB and user |
| [Docs site](homelab-k8s-setup/apps/docs-server/README.md) | nginx + Docsify static site serving this knowledge base at docs.stoat-perch.ts.net |
| [Tailscale operator](homelab-k8s-setup/apps/tailscale/README.md) | Kubernetes operator giving every cluster Ingress a `*.stoat-perch.ts.net` hostname with auto-HTTPS |
| [FileBrowser](homelab-k8s-setup/apps/filebrowser/README.md) | Self-hosted web UI to browse, upload, and manage files — exposes `~/Documents/` on the Mac |
| [Reminders](homelab-k8s-setup/apps/reminders/README.md) | Expiry tracker for passports, insurance, MOT, etc. — Email + SMS + WhatsApp notifications with OCR auto-fill |
| [Moviesda → Jellyfin](moviesda/README.md) | Spring Boot scraper that downloads Tamil movies from moviesda and feeds Jellyfin; also includes the *arr stack for English movies |
| [Monitoring](homelab-k8s-setup/apps/monitoring/README.md) | Prometheus + Grafana + Loki observability stack — one Grafana UI for metrics and logs; new apps auto-discovered |

## How this docs site works

Each homelab app lives in its own GitHub repo with a `docs/` folder. A git-puller sidecar in the docs pod polls all registered repos every 300 s and syncs their `docs/` content into the site automatically — a new app repo with a `docs/` folder is discovered and live within ~5 min of its next poll. To add navigation for a new app, add the relevant entries to `_sidebar.md` in this repo.
