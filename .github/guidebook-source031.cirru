[]
  [] |tree |replace |app.config/dev? |--path |@2.2.0 |--input-format |cirru |--code $ quote .unwrap-or
  [] |tree |replace |app.main/mount-target |--path |@3.0 |--input-format |cirru |--code $ quote .unwrap
  [] |tree |replace |app.main/persist-storage! |--path |@4.1.0 |--input-format |cirru |--code $ quote .unwrap
