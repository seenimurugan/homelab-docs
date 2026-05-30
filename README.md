# homelab-docs

Top-level homelab docs index — the landing page and sidebar template for https://docs.stoat-perch.ts.net.

## What this repo contains

`docs/README.md` — the home page of the docs site.
`docs/_sidebar.md` — preserved as a human-edited reference/template. The running site regenerates its sidebar automatically from all `seenimurugan/*` repos that have a `docs/` folder.

## How it works

The docs site (`docs-server`) runs a git-puller sidecar that:
1. Queries the GitHub API for all `seenimurugan/*` repos with a `docs/` folder
2. Clones/pulls each one into an `emptyDir` volume
3. Symlinks this repo's top-level files into the aggregated root
4. Auto-generates `_sidebar.md` from the discovered tree

No deploy needed for content changes — push to `main` and the sidecar picks it up on the next poll (default: 5 minutes).

## No deploy needed

Content is pulled live by the docs-server sidecar. See [seenimurugan/docs-server](https://github.com/seenimurugan/docs-server) for the server itself.
