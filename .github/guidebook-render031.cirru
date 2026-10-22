[]
  [] |tree |replace |app.main/render-app! |--path |@3.3 |--input-format |cirru |--code
    quote $ fn (op)
      hint-fn $ {} (:args $ [] 'Dynamic) (:return 'Unit) (:features $ #{} :js-ffi)
      if (enum? op) (dispatch! op) (raise "|Expected an Enum render action")
      &unit
