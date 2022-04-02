# `comp-arrow`

`phlox.comp.arrwo/comp-arrow` for arrows:

```cirru
comp-arrow (>> states :demo1)
  {}
    :from $ :from state
    :to $ :to state
    :width 2
    :arm-length 8
    :on-change $ fn (from to d!)
      d! cursor $ assoc state :from from :to to
```
