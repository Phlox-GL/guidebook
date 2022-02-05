# Text input

To interact with text input:

```
phlox.input/request-text! e $ {}
  :placeholder "|text.."
  :initial "|demo"
  :textarea? false
  :style $ {}
  fn (result) (println "|got:" result)
```
