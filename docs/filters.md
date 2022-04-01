# Filters

Based on <https://filters.pixijs.download/main/docs/index.html> .

A demo of adding shadows, first add package:

```bash
yarn add @pixi/filter-drop-shadow
```

then add into `:filters` field:

```cirru
ns demo.demo
  :require
      |@pixi/filter-drop-shadow :refer $ DropShadowFilter

text $ {} (:text "\"Shadows")
  :style $ {}
  :filters $ []
    [] DropShadowFilter $ {}
      :color $ hslx 10 90 100
      :distance 2
      :rotation 30
      :alpha 1
      :quality 4
      :blur 6
```

For a filter `ft` internally it's running `new` to create instances of filters:

```cirru
new (nth ft 0) $ to-js-data (nth ft 1)
```

During updates, only last part `ft` are compared.
