
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |app
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
      :type-slots $ {}
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ .unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *reel (typed/new-reel schema/store)
          :examples $ []
          :schema $ :: 'Ref $ :: 'reel.typed/State 'docs-workflow.schema/Op 'docs-workflow.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when
              and config/dev? $ match op
                (:states _ _) false
                _ true
              println |Dispatch: op
            let
                control $ typed/decode-control op
              reset! *reel $ match control
                (:some action) (typed/apply-control updater @*reel action)
                (:none)
                  typed/record-op updater @*reel
                    match op
                      (:states cursor data)
                        match
                          try-decode-map-as cursor $ :: 'List 'Dynamic
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
                    generate-id!
                    :timestamp $ shared/date-now-snapshot
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Enum
            :features $ #{} :js-ffi
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!)
            .register-language (js-cast hljs 'docs-workflow.schema/HighlightJsHost) |glsl glsl-lang
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch! *reel :changes $ fn (reel prev)
              hint-fn $ {}
                :args $ [] (:: 'reel.typed/State 'docs-workflow.schema/Op 'docs-workflow.schema/Store) (:: 'reel.typed/State 'docs-workflow.schema/Op 'docs-workflow.schema/Store)
                :return 'Unit
              render-app!
            listen-devtools! |k dispatch!
            browser/add-event-listener! |beforeunload $ fn (event)
              hint-fn $ {}
                :args $ [] 'js-ffi.browser/EventHost
                :return 'Unit
              persist-storage!
            browser/set-interval! persist-storage! 60000
            ; let
              (raw (js/localStorage.getItem (:storage-key config/site)))
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn mount-target ()
            .unwrap $ respo-browser/query-selector |.app
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! () (println |persist)
            browser/storage-set!
              .unwrap $ get config/site :storage-key
              format-cirru-edn $ &struct:to-map $ :store @*reel
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *reel :changes) (clear-cache!)
                add-watch! *reel :changes $ fn (reel prev)
                  hint-fn $ {}
                    :args $ [] (:: 'reel.typed/State 'docs-workflow.schema/Op 'docs-workflow.schema/Store) (:: 'reel.typed/State 'docs-workflow.schema/Op 'docs-workflow.schema/Store)
                    :return 'Unit
                  render-app!
                reset! *reel $ typed/refresh updater @*reel schema/store
                hud! |ok~ |Ok
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (mount-target) (comp-container @*reel schema/docs)
              fn (op)
                hint-fn $ {}
                  :args $ [] 'Dynamic
                  :return 'Unit
                  :features $ #{} :js-ffi
                if (enum? op) (dispatch! op) (raise "|Expected an Enum render action")
                &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            docs-workflow.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            |highlight.js :default hljs
            |highlight.js/lib/languages/glsl :default glsl-lang
            reel.typed :as typed
            js-ffi.browser :as browser
            js-ffi.shared :as shared
            respo.ffi.browser :as respo-browser
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'docs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def docs
            []
              docs-schema/DocNode :title |Guide :key :guide :content (load-doc |guide.md) :children $ []
              docs-schema/DocNode :title |Color :key :color :content (load-doc |color.md) :children $ []
              docs-schema/DocNode :title "|Text Input" :key :text-input :content (load-doc |text-input.md) :children $ []
              docs-schema/DocNode :title |Math :key :math :content (load-doc |math.md) :children $ []
              docs-schema/DocNode :title |Shapes :key :shapes :content (load-doc |shapes.md) :children $ []
                docs-schema/DocNode :title |Container :key :container :content (load-doc |shapes/container.md) :children $ []
                docs-schema/DocNode :title |Group :key :group :content (load-doc |shapes/group.md) :children $ []
                docs-schema/DocNode :title |Rectangle :key :rect :content (load-doc |shapes/rect.md) :children $ []
                docs-schema/DocNode :title |Circle :key :circle :content (load-doc |shapes/circle.md) :children $ []
                docs-schema/DocNode :title |Text :key :text :content (load-doc |shapes/text.md) :children $ []
                docs-schema/DocNode :title |Graphics :key :graphics :content (load-doc |shapes/graphics.md) :children $ []
                docs-schema/DocNode :title |List :key :create-list :content (load-doc |shapes/create-list.md) :children $ []
                docs-schema/DocNode :title |Polyline :key :polyline :content (load-doc |shapes/polyline.md) :children $ []
                docs-schema/DocNode :title "|Line Segments" :key :line-segments :content (load-doc |shapes/line-segments.md) :children $ []
                docs-schema/DocNode :title |Mesh :key :mesh :content (load-doc |shapes/mesh.md) :children $ []
                docs-schema/DocNode :title |Image :key :image :content (load-doc |shapes/image.md) :children $ []
              docs-schema/DocNode :title |Components :key :components :content (load-doc |components.md) :children $ []
                docs-schema/DocNode :title |Arrow :key :arrow :content (load-doc |components/arrow.md) :children $ []
                docs-schema/DocNode :title |Button :key :button :content (load-doc |components/button.md) :children $ []
                docs-schema/DocNode :title |Messages :key :messages :content (load-doc |components/messages.md) :children $ []
                docs-schema/DocNode :title "|Slider Point" :key :slider-point :content (load-doc |components/slider-point.md) :children $ []
                docs-schema/DocNode :title |Slider :key :slider :content (load-doc |components/slider.md) :children $ []
                docs-schema/DocNode :title "|Spin Slider" :key :spin-slider :content (load-doc |components/spin-slider.md) :children $ []
                docs-schema/DocNode :title "|Drag Point" :key :drag-point :content (load-doc |components/drag-point.md) :children $ []
                docs-schema/DocNode :title |Switch :key :switch :content (load-doc |components/switch.md) :children $ []
                docs-schema/DocNode :title |Tabs :key :tabs :content (load-doc |components/tabs.md) :children $ []
              docs-schema/DocNode :title |Filters :key :filters :content (load-doc |filters.md) :children $ []
          :examples $ []
          :schema $ :: 'List 'docs-workflow.schema/DocNode
        'load-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-doc (filename)
            read-file $ str |docs/ filename
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{} :fs-read
            :expansion $ :: 'Expr 'String
            :required $ [] 'Syntax
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            docs-schema/Store :states $ {} $ :cursor ([])
          :examples $ []
          :schema $ :: 'docs-workflow.schema/Store
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
          :require $ docs-workflow.schema :as docs-schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op op-id op-time) (docs-updater/updater store op op-id op-time)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'docs-workflow.schema/Store)
            :args $ [] 'docs-workflow.schema/Store 'docs-workflow.schema/Op 'String 'Number
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ docs-workflow.updater :as docs-updater
