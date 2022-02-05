# `comp-switch`

`phlox.comp.switch/comp-switch` provides a switch button:

```
comp-switch $ {}
  :value (:value state)
  :position $ [] 100 20
  :title "|Custom title"
  :on-change $ fn (value d!) (d! cursor (assoc state :value value))
```
