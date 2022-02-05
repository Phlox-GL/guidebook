# Graphics

Draw graphics(use `phlox.core/g` for validations):

```
{}
  :ops $ []
    g :move-to $ [] 1 1
    g :line-to $ [] 2 2
    g :line-style $ {}
    g :begin-fill $ {} (:color "red")
    g :end-fill nil
    g :close-path nil
    g :arc-to $ {} (:p1 $ [] 200 200) (:p2 $ [] 240 180) (:radius 90)
    g :arc $ {} (:center $ [] 260 120) (:radius 40) (:angle $ [] 70 60) (:anticlockwise? false)
    g :bezier-to $ {} (:p1 $ [] 400 500) (:p2 $ [] 300 200) (:to-p $ 600 300)
    g :quadratic-to $ {} (:p1 $ [] 400 100) (:to-p $ [] 500 400)
  :position $ [] 1 1
  :pivot $ [] 1 2
  :rotation 0
  :alpha 1
  :on $ {}
    :pointertap (fn ())
  :on-keyboard $ {}
    :down (fn ())
```
