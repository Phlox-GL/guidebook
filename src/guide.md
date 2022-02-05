## Phlox in calcit-js

> Pixi.js DSL in ClojureScript with hot code swapping, inspired by Virtual DOMs. Currently only a small subset of Pixi.js features is supported.

Previews <http://r.tiye.me/Phlox-GL/phlox/> .

### Usage

`render!` to add canvas to `<body/>`:

```
ns app.main $
  :require $ [] phlox.core :refer
    [] hslx render! create-list rect circle text container graphics >>

defn comp-demo (data)
  rect
    {}
      :position $ [] 800 40
      :size $ [] 60 34
      :fill $ hslx 40 80 80
      :on $ :pointertap $ fn (e d!) (d! :demo nil)
    text $ {}
      :text "|Demo"
      :position $ [] 808 44
      :style $ {}
        :fill (hslx 120 80 20)
        :font-size 18
        :font-family "|Josefin Sans"

defatom *store nil

defn dispatch! (op op-data)
  reset! *store (updater @*store op op-data))

defn main ()
  render! (comp-demo data) dispatch! ({})

defn reload! ()
  render! (comp-container @*store) dispatch! $ {} (:swap? true)
```

Notice that Phlox uses `:pointertap` instead of `:click` for touch screen support.

### Global keyboard events

Phlox supports a naive global event system for listening to keyboard events from elements:

```
:on-keyboard $ {}
  :down $ fn (e dispatch!)
  :press $ fn (e dispatch!)
  :up $ fn (e dispatch!)
```

### Cursor and states

`>>` for branching states:

```
phlox.core/>> state :a
```

`update-states` for handling states change, used in updater:

```
phlox.cursor/update-states store $ [] cursor op-data
```
