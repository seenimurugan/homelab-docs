#!/usr/bin/env bash
# deploy.sh — no Kubernetes deploy needed for homelab-docs.
# Content is pulled live by the docs-server git-puller sidecar.
# Just push to main and the sidecar picks up changes within 5 minutes.
echo "No deploy needed — content is pulled live by docs-server sidecar."
echo "Push your changes to main and they will appear within 5 minutes."
echo ""
echo "See https://github.com/seenimurugan/docs-server for the server."
