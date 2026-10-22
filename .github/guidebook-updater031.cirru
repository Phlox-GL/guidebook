[]
  [] |edit |imports |app.updater |--input-format |cirru |--code
    quote $ []
      docs-workflow.updater :as docs-updater
  [] |tree |replace |app.updater/updater |--path |@3 |--input-format |cirru |--code
    quote $ docs-updater/updater store op op-id op-time
