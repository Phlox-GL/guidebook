## Phlox Calcit Guide Book

```bash
cargo install mdbook
cargo install mdbook-linkcheck

mdbook serve
```

### Migration candidate

The candidate targets formal Calcit/procs 0.29.2. The Snapshot package is `app`,
so its local `app.*` definitions no longer collide with the `docs-workflow`
dependency. The guarded official configuration edit preserved all 13 original
definition payloads. Dependency installation is strict, not a mixed-version
fallback.

The application still needs legacy API/FFI/schema migration, and published
Docs Workflow 0.0.34 currently blocks strict checks through its optional
`find-target` lookup and older Respo graph. `compact.cirru` is retained until
the canonical application has passed full source, build and runtime acceptance.
The existing server directory and separate mdbook deployment (`mdbook.html`)
must be preserved; COS migration applies only to frontend resources.

### License

MIT
