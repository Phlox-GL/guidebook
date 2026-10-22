## Phlox Calcit Guide Book

```bash
cargo install mdbook
cargo install mdbook-linkcheck

mdbook serve
```

### Migration candidate

The candidate targets precisely paired formal Calcit/procs 0.30.1. The Snapshot package is `app`,
so its local `app.*` definitions no longer collide with the `docs-workflow`
dependency. The guarded official configuration edit preserved all 13 original
definition payloads. Dependency installation is strict, not a mixed-version
fallback.

The candidate consumes published Docs Workflow 0.0.37. All 13 local definitions
use current typed DocNode/Store/Op/Reel contracts; the 27 document nodes retain
their titles, keys, content references and hierarchy. The original 60-second
timer and Map archive format remain, and storage restoration stays disabled.
Styles come from the same versioned Caps module rather than the old CSS-only
npm package; Vite preserves that logical module path for dependency resolution.

The earlier 0.29.2 candidate passed 239 full definitions, 13 public definitions,
build and Guide/Shapes/Rectangle navigation; those historical results are not
acceptance of the new formal graph. Exact 0.30.1 CI and browser evidence belongs
in the migration PR. This does not assert type closure in dependencies or
exhaustive compilation of all documentation fragments. `compact.cirru` is retired;
its previous content is recoverable from Git history. Generated output is not
tracked. Actions now installs the formal toolchain and builds both frontends;
COS verification uses only the upload action's built-in public URL check.
PR uploads have isolated number/run/attempt prefixes and never run rsync.
The earlier PR upload verified 3 frontend assets and 69 mdBook files; current
candidate uploads and runtime must be accepted separately. Main deployment is
not triggered as part of the migration review.
PRs save both original frontend outputs as a short-lived artifact so the SPA
HTML and separate mdBook can be accepted without changing their deployment paths.

Three internal Option helpers use public methods, preserving original missing
value behavior. `hud!` error/success display, document hierarchy, 60-second Map
archive write and disabled restoration remain unchanged. The introduction now
links the real 0.30.1 workflow and documents single-Enum application dispatch
separately from widget dispatch; broken legacy initialization code is retired.
The GLSL highlighter is registered as `glsl`, not as a replacement for `bash`.

The existing server directory and separate mdbook deployment (`mdbook.html`)
must be preserved; COS migration applies only to frontend resources.

### License

MIT
