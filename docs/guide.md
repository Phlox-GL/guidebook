## Phlox in Calcit

Phlox is a Pixi.js DSL in Calcit with hot code swapping, inspired by Virtual DOMs.
Only a subset of Pixi.js features is supported.

Previews <http://r.tiye.me/Phlox-GL/phlox/> .

### Usage

Start with the maintained [Phlox workflow](https://github.com/Phlox-GL/phlox-workflow),
using the formal Calcit/procs version paired in its `deps.cirru` / `package.json`:

```sh
git clone https://github.com/Phlox-GL/phlox-workflow.git
cd phlox-workflow
caps --strict --ci
corepack yarn install --immutable
caps verify --toolchain
corepack yarn dev
```

The current workflow uses formal 0.30.1. Edit `calcit.cirru` with the Calcit CLI,
not as raw Snapshot text. Type schemas belong to the maintained project; the
fragments below explain API usage, not a complete standalone program.

Current namespace imports do not wrap import rules or referred names in lists:

```cirru
ns app.main $ :require
  phlox.core :refer $ hslx render! rect text container clear-phlox-caches!
```

`render!` mounts the canvas on `<body/>`. The application's `dispatch!` receives
one Enum operation and returns Unit; it is not the old `(op op-data)` callback.
The widget callback's `d!` also supports cursor + data for local state updates.
Do not treat these two protocols as the same fixed two-argument function.

For example, a pointer callback can send a single Enum operation:

```cirru
container ({})
  rect $ {}
    :position $ [] 100 100
    :size $ [] 120 44
    :fill $ hslx 40 80 80
    :on $ {} $ :pointertap
      fn (e d!)
        d! $ :: :demo
        &unit
  text $ {}
    :text |Demo
    :position $ [] 108 104
    :style $ {} (:fill 0xffffff) (:font-size 18)
```

Phlox uses `:pointertap` instead of `:click` for touch screen support. Mutable
references use `defref`, for example `defref *count 0`; use the workflow's typed
store/updater rather than copying the retired `defatom` / nil-store example.
Keep the workflow's `hud!` page error/success display during hot reload.

### Global keyboard events

Phlox supports a naive global event system for listening to keyboard events from elements:

```cirru
{}
  :on-keyboard $ {}
    :down $ fn (e d!) &unit
    :press $ fn (e d!) &unit
    :up $ fn (e d!) &unit
```

### Cursor and states

`>>` for branching states:

```cirru
phlox.core/>> state :a
```

`update-states` for handling states change, used in updater:

```cirru
phlox.cursor/update-states store cursor op-data
```

This is the three-argument API: `Map<Tag, Dynamic>`, `List<Dynamic>`, and the
new state value. Decode actual widget payloads at typed business-model writes;
do not replace an open callback with an unchecked guessed signature.
