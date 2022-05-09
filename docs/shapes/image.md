# `image`

Draw image with `PIXI/Sprite`:

```cirru
image $ {}
  :url |https://cdn.tiye.me/logo/quamolit.png
  :position $ [] 100 20
  :size $ [] 100 100
  :on $ {} $ :pointertap $ fn (e d)
    println |clicked
```
