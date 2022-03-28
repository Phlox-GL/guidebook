# Text

Draw text:

```
text $ {}
  :text "demo"
  :position $ [] 1 1
  :pivot $ [] 0 0
  :rotation 0
  :alpha 1
  :style $ {}
    :fill "|red"
    :font-size 14
    :font-family "|Hind"
  :on-keyboard $ {}
    :down (fn ())
```

> `:align :center` is handled via special logic, need deeper investigation.

simple version:

```
text $ {}
  :text "demo"
  :position $ [] 1 1
  :style $ {}
    :fill "|red"
    :font-size 14
    :font-family "|Hind"
```
