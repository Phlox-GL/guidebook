# Container

Add a container:

```cirru
container $ {}
  :position $ [] 1 1
  :pivot $ [] 0 0
  :rotation 0
  :alpha 1
  :on $ {}
    :pointertap (fn ())
  :on-keyboard $ {}
    :down (fn ())
```

simple version:

```cirru
container $ {}
  :position $ [] 1 1
```
