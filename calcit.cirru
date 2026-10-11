
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |docs-workflow
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'app.main/main!) (:mode :js) (:reload-fn 'app.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
      :type-slots $ {}
  :files $ {}
    'app.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            = |dev $ get-env |mode |release
          :examples $ []
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} $ :storage-key |workflow
          :examples $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.config
    'app.main $ %{} 'FileEntry
      :defs $ {}
        '*reel $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *reel
            -> reel-schema/reel (assoc :base schema/store) (assoc :store schema/store)
          :examples $ []
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op op-data)
            when
              and config/dev? $ not= op :states
              println |Dispatch: op
            reset! *reel $ reel-updater updater @*reel op op-data
          :examples $ []
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! () (register-languages!) (.!registerLanguage hljs |bash glsl-lang)
            println "|Running mode:" $ if config/dev? |dev |release
            if config/dev? $ load-console-formatter!
            render-app!
            add-watch *reel :changes $ fn (reel prev) (render-app!)
            listen-devtools! |k dispatch!
            js/window.addEventListener |beforeunload $ fn (event) (persist-storage!)
            flipped js/setInterval 60000 persist-storage!
            ; let
              (raw (js/localStorage.getItem (:storage-key config/site)))
              when (some? raw)
                dispatch! :hydrate-storage $ parse-cirru-edn raw
            println "|App started."
          :examples $ []
        'mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mount-target (.!querySelector js/document |.app)
          :examples $ []
        'persist-storage! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn persist-storage! () (js/console.log |persist)
            js/localStorage.setItem (:storage-key config/site)
              format-cirru-edn $ :store @*reel
          :examples $ []
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch *reel :changes) (clear-cache!)
                add-watch *reel :changes $ fn (reel prev) (render-app!)
                reset! *reel $ refresh-reel @*reel schema/store updater
                hud! |ok~ |Ok
              hud! |error build-errors
          :examples $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! mount-target (comp-container @*reel schema/docs) dispatch!
          :examples $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.main
          :require
            respo.core :refer $ render! clear-cache!
            docs-workflow.comp.container :refer $ comp-container
            app.updater :refer $ updater
            app.schema :as schema
            reel.util :refer $ listen-devtools!
            reel.core :refer $ reel-updater refresh-reel
            reel.schema :as reel-schema
            app.config :as config
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            docs-workflow.config :refer $ register-languages!
            |highlight.js :default hljs
            |highlight.js/lib/languages/glsl :default glsl-lang
    'app.schema $ %{} 'FileEntry
      :defs $ {}
        'docs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def docs
            []
              {} (:title |Guide) (:key :guide)
                :content $ load-doc |guide.md
              {} (:title |Color) (:key :color)
                :content $ load-doc |color.md
              {} (:title "|Text Input") (:key :text-input)
                :content $ load-doc |text-input.md
              {} (:title |Math) (:key :math)
                :content $ load-doc |math.md
              {} (:title |Shapes) (:key :shapes)
                :content $ load-doc |shapes.md
                :children $ []
                  {} (:title |Container) (:key :container)
                    :content $ load-doc |shapes/container.md
                  {} (:title |Group) (:key :group)
                    :content $ load-doc |shapes/group.md
                  {} (:title |Rectangle) (:key :rect)
                    :content $ load-doc |shapes/rect.md
                  {} (:title |Circle) (:key :circle)
                    :content $ load-doc |shapes/circle.md
                  {} (:title |Text) (:key :text)
                    :content $ load-doc |shapes/text.md
                  {} (:title |Graphics) (:key :graphics)
                    :content $ load-doc |shapes/graphics.md
                  {} (:title |List) (:key :create-list)
                    :content $ load-doc |shapes/create-list.md
                  {} (:title |Polyline) (:key :polyline)
                    :content $ load-doc |shapes/polyline.md
                  {} (:title "|Line Segments") (:key :line-segments)
                    :content $ load-doc |shapes/line-segments.md
                  {} (:title |Mesh) (:key :mesh)
                    :content $ load-doc |shapes/mesh.md
                  {} (:title |Image) (:key :image)
                    :content $ load-doc |shapes/image.md
              {} (:title |Components) (:key :components)
                :content $ load-doc |components.md
                :children $ []
                  {} (:title |Arrow) (:key :arrow)
                    :content $ load-doc |components/arrow.md
                  {} (:title |Button) (:key :button)
                    :content $ load-doc |components/button.md
                  {} (:title |Messages) (:key :messages)
                    :content $ load-doc |components/messages.md
                  {} (:title "|Slider Point") (:key :slider-point)
                    :content $ load-doc |components/slider-point.md
                  {} (:title |Slider) (:key :slider)
                    :content $ load-doc |components/slider.md
                  {} (:title "|Spin Slider") (:key :spin-slider)
                    :content $ load-doc |components/spin-slider.md
                  {} (:title "|Drag Point") (:key :drag-point)
                    :content $ load-doc |components/drag-point.md
                  {} (:title |Switch) (:key :switch)
                    :content $ load-doc |components/switch.md
                  {} (:title |Tabs) (:key :tabs)
                    :content $ load-doc |components/tabs.md
              {} (:title |Filters) (:key :filters)
                :content $ load-doc |filters.md
          :examples $ []
        'load-doc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro load-doc (filename)
            read-file $ str |docs/ filename
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] 'Syntax
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            {} $ :states $ {}
              :cursor $ []
          :examples $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.schema
    'app.updater $ %{} 'FileEntry
      :defs $ {} $ 'updater
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op data op-id op-time)
            case-default op
              do (println "|unknown op:" op) store
              :states $ update-states store data
              :hydrate-storage data
          :examples $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns app.updater
          :require $ respo.cursor :refer $ update-states
