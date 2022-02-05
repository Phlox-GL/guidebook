# Circle

Draw a circle:

```
{}
  :position $ [] 1 1
  :radius 1
  :line-style $ {}
    :width 2
    :color 0x000001
    :alpha 1
  :fill 0x000001
  :on $ {}
    :pointertap (fn ())
  :alpha 1
  :on-keyboard $ {}
    :down (fn ())
```
