# `create-list`

requires 3 arguments, with last one in a list of pairs:

```
create-list :container ({})
  -> (range 20)
    map $ fn (idx)
      [] idx $ text
        {}
          :text $ str idx
          :style $ {}
          :position $ [] 0 0
```

Shape name is probably `:container` but you may also change to another one.
