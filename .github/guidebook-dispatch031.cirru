[]
  [] |tree |replace |app.main/dispatch! |--path |@4.2.2.3.1.3 |--input-format |cirru |--code
    quote $ match op
      (:states cursor data)
        match (try-decode-map-as cursor $ :: 'List 'Dynamic)
          (:ok checked-cursor) (docs-workflow.schema/Op :states checked-cursor data)
          (:err message) (raise message)
      (:hydrate-storage data)
        match
          try-decode-map-as
            if (struct? data) (&struct:to-map data) data
            , 'docs-workflow.schema/Store
          (:ok checked-store) (docs-workflow.schema/Op :hydrate-storage checked-store)
          (:err message) (raise message)
      _ $ raise "|Unknown Docs Workflow operation"
