# OpenClaw Local Control Setup (Samwise Fork)

This fork is wired for local-first MCP use against the markdown knowledge repo.

## Local knowledge graph target
- Vault path: `/home/bot/.openclaw/repos/knowledge`
- Backend: `obsidian`

## Build
```bash
go build -o ./bin/graphthulhu .
```

## Run as MCP server (stdio)
```bash
./bin/graphthulhu --backend obsidian --vault /home/bot/.openclaw/repos/knowledge
```

## Health check (standalone)
```bash
./bin/graphthulhu --backend obsidian --vault /home/bot/.openclaw/repos/knowledge serve
```

## Suggested MCP client config snippet
```json
{
  "mcpServers": {
    "graphthulhu": {
      "command": "/home/bot/.openclaw/repos/graphthulhu/bin/graphthulhu",
      "args": ["--backend", "obsidian", "--vault", "/home/bot/.openclaw/repos/knowledge"],
      "env": {}
    }
  }
}
```

## Fork ownership
- Origin (writable): `git@github.com:samwise-bot/graphthulhu.git`
- Upstream (source): `git@github.com:skridlevsky/graphthulhu.git`

## Development policy in this fork
- Keep upstream sync frequent.
- Put local operational integration docs/scripts in `docs/` and `scripts/`.
- Preserve clean, reviewable commits.
