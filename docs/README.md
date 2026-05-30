# Homelab Knowledge Base

Everything about the self-hosted apps running on the homelab. Each app has its own folder with a README, user manual, maintenance runbook, and reference configs.

## Quick access

- 📸 [Immich — photos](https://immich.stoat-perch.ts.net ':target=_blank')
- 🎬 [Jellyfin — movies & TV](https://jellyfin.stoat-perch.ts.net ':target=_blank')
- 🥕 [Grocy — household inventory](https://grocy.stoat-perch.ts.net ':target=_blank')
- 🧹 [Chores — kids' chore tracker](https://chores.stoat-perch.ts.net ':target=_blank')
- 📁 [FileBrowser — documents](https://files.stoat-perch.ts.net ':target=_blank')
- ⏰ [Reminders — expiry tracker](https://reminders.stoat-perch.ts.net ':target=_blank')

## Apps

| App | What it does |
|---|---|
| [Homelab K8s setup](homelab-k8s-setup/README.md) | Kubernetes cluster, storage, Tailscale, Immich, Jellyfin, Grocy |
| [Chores](homelab-k8s-setup/apps/chores/README.md) | Kids' chore tracker with admin + per-kid logins and graphs |
| [Reminders](homelab-k8s-setup/apps/reminders/README.md) | Expiry tracker for passports, insurance, MOT, etc. — Email + SMS + WhatsApp notifications with OCR auto-fill |

## How this docs site works

The docs site itself is `Deployment/docs` in the `homelab` namespace. It runs an `nginx:alpine` pod that serves the contents of `/Users/nila/Developer/agents/docs/` (this folder) via [docsify](https://docsify.js.org).

To add docs for a new app: create a new sibling folder here (e.g. `myapp/`), add `_sidebar.md` entries below, then restart the docs pod.
