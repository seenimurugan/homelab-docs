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
- 🍿 [Radarr — movie automation (arrstack)](https://radarr.stoat-perch.ts.net ':target=_blank')
- 📊 [Grafana — monitoring](https://grafana.stoat-perch.ts.net ':target=_blank')
- 🗄 [Storage Console — tiering & backup](https://tier.stoat-perch.ts.net ':target=_blank')
- 📈 Umami — analytics dashboard: https://umami.stoat-perch.ts.net *(tailnet-only — not public)*
- 📖 [Docs site](https://docs.stoat-perch.ts.net ':target=_blank')

## Apps

| App | What it does |
|---|---|
| [Homelab Cluster](/cluster-setup/docs/README.md) | k3s cluster on OrbStack — storage, networking, Tailscale, and all app deployments |
| [Arrstack](/arrstack/docs/README.md) | Radarr / Prowlarr / qBittorrent / Bazarr stack that feeds English movies & subtitles into Jellyfin |
| [Chores](/chores/docs/README.md) | Kids' chore tracker with admin + per-kid logins and completion-rate graphs |
| [Docs site](/docs-server/docs/README.md) | nginx + Docsify static site serving this knowledge base at docs.stoat-perch.ts.net |
| [Email × Company Matrix](/emailmatrix/docs/README.md) | Tracks which personal email addresses are registered with which companies — matrix view with live checkbox toggles |
| [FileBrowser](/filebrowser/docs/README.md) | Self-hosted web UI to browse, upload, and manage files — exposes `~/Documents/` on the Mac |
| [Grocy](/grocy/docs/README.md) | Self-hosted household ERP — pantry/fridge/freezer stock, expiry dates, shopping lists, and recipes |
| [Immich](/immich/docs/README.md) | Self-hosted Google Photos replacement with AI face recognition, smart search, and mobile auto-backup |
| [Jellyfin](/jellyfin/docs/README.md) | Self-hosted media server for movies, TV shows, and music — streams to phones, TVs, and browsers |
| [Monitoring](/monitoring/docs/README.md) | Prometheus + Grafana + Loki observability stack — one Grafana UI for metrics and logs; new apps auto-discovered |
| [Moviesda → Jellyfin](/moviesda/docs/README.md) | Spring Boot scraper that downloads Tamil movies from moviesda and feeds Jellyfin |
| [Reminders](/reminders/docs/README.md) | Expiry tracker for passports, insurance, MOT, etc. — Email + SMS + WhatsApp notifications with OCR auto-fill |
| [Shared Postgres](/shared-postgres/docs/README.md) | PostgreSQL 17 StatefulSet shared by all custom apps — each app gets its own DB and user |
| [Storage Console](/storage-console/docs/README.md) | Dashboard for HDD storage tiering and Immich backup — Auto/Manual toggles and Trigger-Now controls |
| [Tailscale Operator](/tailscale-operator/docs/README.md) | Kubernetes operator giving every cluster Ingress a `*.stoat-perch.ts.net` hostname with auto-HTTPS |
| [Umami](/umami/docs/README.md) | Privacy-friendly analytics dashboard — tracks public Funnel app usage; **tailnet-only** (not a public URL) |

## How this docs site works

Each homelab app lives in its own GitHub repo with a `docs/` folder. A git-puller sidecar in the docs pod polls all registered repos every 300 s and syncs each repo's `docs/` content into the site under `/<repo>/docs/`. The left-nav `_sidebar.md` is **auto-generated** from the synced repos on every poll, so a new app repo with a `docs/` folder appears in the sidebar — and is reachable here — within ~5 min, with no manual sidebar edits.
