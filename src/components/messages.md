# `comp-messages`

`phlox.comp.messages/comp-messages` for rendering messages:

```
comp-messages $ {}
  :messages (:messages state)
  :position $ [] 16 (- js/window.innerWidth 16)
  :color (hslx 0 0 50)
  :fill (hslx 0 0 30)
  :bottom? false
  :on-pointertap (fn (message d!))
```
