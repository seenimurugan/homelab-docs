# Graph Report - homelab-docs  (2026-05-30)

## Corpus Check
- 29 files · ~3,749 words
- Verdict: corpus is large enough that graph structure adds value.

## Summary
- 118 nodes · 90 edges · 28 communities (21 shown, 7 thin omitted)
- Extraction: 100% EXTRACTED · 0% INFERRED · 0% AMBIGUOUS
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `9851b0f8`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- [[_COMMUNITY_Community 0|Community 0]]
- [[_COMMUNITY_Community 1|Community 1]]
- [[_COMMUNITY_Community 2|Community 2]]
- [[_COMMUNITY_Community 3|Community 3]]
- [[_COMMUNITY_Community 4|Community 4]]
- [[_COMMUNITY_Community 5|Community 5]]
- [[_COMMUNITY_Community 6|Community 6]]
- [[_COMMUNITY_Community 7|Community 7]]
- [[_COMMUNITY_Community 8|Community 8]]
- [[_COMMUNITY_Community 9|Community 9]]
- [[_COMMUNITY_Community 10|Community 10]]
- [[_COMMUNITY_Community 11|Community 11]]
- [[_COMMUNITY_Community 12|Community 12]]
- [[_COMMUNITY_Community 13|Community 13]]
- [[_COMMUNITY_Community 14|Community 14]]
- [[_COMMUNITY_Community 15|Community 15]]
- [[_COMMUNITY_Community 16|Community 16]]
- [[_COMMUNITY_Community 17|Community 17]]
- [[_COMMUNITY_Community 18|Community 18]]
- [[_COMMUNITY_Community 19|Community 19]]
- [[_COMMUNITY_Community 20|Community 20]]
- [[_COMMUNITY_Community 21|Community 21]]
- [[_COMMUNITY_Community 22|Community 22]]
- [[_COMMUNITY_Community 23|Community 23]]
- [[_COMMUNITY_Community 24|Community 24]]
- [[_COMMUNITY_Community 25|Community 25]]
- [[_COMMUNITY_Community 26|Community 26]]

## God Nodes (most connected - your core abstractions)
1. `code-review-graph` - 6 edges
2. `MCP Tools: code-review-graph` - 4 edges
3. `homelab-docs` - 4 edges
4. `MCP Tools: code-review-graph` - 4 edges
5. `MCP Tools: code-review-graph` - 4 edges
6. `MCP Tools: code-review-graph` - 4 edges
7. `Homelab Knowledge Base` - 4 edges
8. `MCP Tools: code-review-graph` - 4 edges
9. `MCP Tools: code-review-graph` - 4 edges
10. `hooks` - 3 edges

## Surprising Connections (you probably didn't know these)
- None detected - all connections are within the same source files.

## Communities (28 total, 7 thin omitted)

### Community 0 - "Community 0"
Cohesion: 0.25
Nodes (7): args, command, cwd, env, type, mcpServers, code-review-graph

### Community 1 - "Community 1"
Cohesion: 0.40
Nodes (4): Key Tools, MCP Tools: code-review-graph, When to use graph tools FIRST, Workflow

### Community 2 - "Community 2"
Cohesion: 0.40
Nodes (4): Debug Issue, Steps, Tips, Token Efficiency Rules

### Community 3 - "Community 3"
Cohesion: 0.40
Nodes (4): Explore Codebase, Steps, Tips, Token Efficiency Rules

### Community 4 - "Community 4"
Cohesion: 0.40
Nodes (4): Refactor Safely, Safety Checks, Steps, Token Efficiency Rules

### Community 5 - "Community 5"
Cohesion: 0.40
Nodes (4): Output Format, Review Changes, Steps, Token Efficiency Rules

### Community 6 - "Community 6"
Cohesion: 0.40
Nodes (4): Apps, Homelab Knowledge Base, How this docs site works, Quick access

### Community 7 - "Community 7"
Cohesion: 0.40
Nodes (4): Key Tools, MCP Tools: code-review-graph, When to use graph tools FIRST, Workflow

### Community 8 - "Community 8"
Cohesion: 0.40
Nodes (4): Debug Issue, Steps, Tips, Token Efficiency Rules

### Community 9 - "Community 9"
Cohesion: 0.40
Nodes (4): Explore Codebase, Steps, Tips, Token Efficiency Rules

### Community 10 - "Community 10"
Cohesion: 0.40
Nodes (4): Refactor Safely, Safety Checks, Steps, Token Efficiency Rules

### Community 11 - "Community 11"
Cohesion: 0.40
Nodes (4): Output Format, Review Changes, Steps, Token Efficiency Rules

### Community 12 - "Community 12"
Cohesion: 0.40
Nodes (4): Key Tools, MCP Tools: code-review-graph, When to use graph tools FIRST, Workflow

### Community 13 - "Community 13"
Cohesion: 0.40
Nodes (4): Key Tools, MCP Tools: code-review-graph, When to use graph tools FIRST, Workflow

### Community 14 - "Community 14"
Cohesion: 0.40
Nodes (4): Key Tools, MCP Tools: code-review-graph, When to use graph tools FIRST, Workflow

### Community 15 - "Community 15"
Cohesion: 0.40
Nodes (4): homelab-docs, How it works, No deploy needed, What this repo contains

### Community 16 - "Community 16"
Cohesion: 0.40
Nodes (4): Key Tools, MCP Tools: code-review-graph, When to use graph tools FIRST, Workflow

### Community 17 - "Community 17"
Cohesion: 0.50
Nodes (3): hooks, PostToolUse, SessionStart

### Community 18 - "Community 18"
Cohesion: 0.50
Nodes (3): hooks, AfterTool, SessionStart

### Community 19 - "Community 19"
Cohesion: 0.50
Nodes (3): hooks, PostToolUse, SessionStart

## Knowledge Gaps
- **66 isolated node(s):** `setup-graph.sh script`, `command`, `args`, `cwd`, `type` (+61 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **7 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **What connects `setup-graph.sh script`, `command`, `args` to the rest of the system?**
  _66 weakly-connected nodes found - possible documentation gaps or missing edges._