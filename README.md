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

The candidate consumes formal Docs Workflow 0.0.35. All 13 local definitions
use current typed DocNode/Store/Op/Reel contracts; the 27 document nodes retain
their titles, keys, content references and hierarchy. The original 60-second
timer and Map archive format remain, and storage restoration stays disabled.
Styles come from the same versioned Caps module rather than the old CSS-only
npm package; Vite preserves that logical module path for dependency resolution.

Strict toolchain verification, 239 full definitions, 13 public definitions,
production build and actual Guide/Shapes/Rectangle browser navigation pass.
Local unresolved type slots and deprecated source calls are zero. This does
not assert type closure in dependencies or migration of historical code blocks
inside documentation. `compact.cirru` is retired after this local acceptance;
its previous content is recoverable from Git history. Generated output is not
tracked. The old Actions workflow still needs replacement before remote
acceptance and publication; no completed deployment is claimed.

The existing server directory and separate mdbook deployment (`mdbook.html`)
must be preserved; COS migration applies only to frontend resources.

### License

MIT
