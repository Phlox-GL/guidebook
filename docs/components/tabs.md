# `comp-tabs`

`phlox.comp.tabs/comp-tabs` provides a switch button:

```cirru
comp-tabs
  []
    [] :a |A
    [] :b |B
  , :a
  {}
    :position $ [] 100 20
  fn (tab d!) 4 println |tab tab
```
