
{}
  :configs $ {} (:init-fn |app.main/main!) (:port 6001) (:reload-fn |app.main/reload!) (:storage-key |calcit.cirru) (:version |0.0.1)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-ui.calcit/ |respo-markdown.calcit/ |reel.calcit/ |respo-router.calcit/ |alerts.calcit/ |docs-workflow/
  :entries $ {}
  :ir $ {} (:package |docs-workflow)
    :files $ {}
      |app.config $ {}
        :defs $ {}
          |dev? $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |j $ {} (:at 1544873875614) (:by |rJG4IHzWf) (:text |dev?) (:type :leaf)
              |r $ {} (:at 1624469709435) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |5 $ {} (:at 1624469715390) (:by |rJG4IHzWf) (:text |=) (:type :leaf)
                  |D $ {} (:at 1624469714304) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                  |T $ {} (:at 1624469701389) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1624469706777) (:by |rJG4IHzWf) (:text |get-env) (:type :leaf)
                      |T $ {} (:at 1624469708397) (:by |rJG4IHzWf) (:text "|\"mode") (:type :leaf)
                      |b $ {} (:at 1651434480808) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
          |site $ {} (:at 1545933382603) (:by |root) (:type :expr)
            :data $ {}
              |T $ {} (:at 1518157345496) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1518157327696) (:by |root) (:text |site) (:type :leaf)
              |r $ {} (:at 1518157327696) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1518157346643) (:by |root) (:text |{}) (:type :leaf)
                  |yf $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1544956719115) (:by |rJG4IHzWf) (:text "|\"workflow") (:type :leaf)
        :ns $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
            |T $ {} (:at 1527788237503) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1527788237503) (:by |root) (:text |app.config) (:type :leaf)
        :proc $ {} (:at 1527788237503) (:by |root) (:type :expr)
          :data $ {}
      |app.main $ {}
        :defs $ {}
          |*reel $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1610792986987) (:by |rJG4IHzWf) (:text |defatom) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |*reel) (:type :leaf)
              |r $ {} (:at 1507399777531) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1507399778895) (:by |root) (:text |->) (:type :leaf)
                  |T $ {} (:at 1507399776350) (:by |root) (:text |reel-schema/reel) (:type :leaf)
                  |j $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507401405076) (:by |root) (:text |:base) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
                  |r $ {} (:at 1507399779656) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399781682) (:by |root) (:text |assoc) (:type :leaf)
                      |j $ {} (:at 1507399793097) (:by |root) (:text |:store) (:type :leaf)
                      |r $ {} (:at 1507399787471) (:by |root) (:text |schema/store) (:type :leaf)
          |dispatch! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |dispatch!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op-data) (:type :leaf)
              |t $ {} (:at 1547437686766) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1547437687530) (:by |root) (:text |when) (:type :leaf)
                  |L $ {} (:at 1584874661674) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1584874662518) (:by |rJG4IHzWf) (:text |and) (:type :leaf)
                      |T $ {} (:at 1547437691006) (:by |root) (:text |config/dev?) (:type :leaf)
                      |j $ {} (:at 1584874663522) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874664551) (:by |rJG4IHzWf) (:text |not=) (:type :leaf)
                          |j $ {} (:at 1584874665829) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                          |r $ {} (:at 1584874671745) (:by |rJG4IHzWf) (:text |:states) (:type :leaf)
                  |T $ {} (:at 1518156274050) (:by |root) (:type :expr)
                    :data $ {}
                      |j $ {} (:at 1518156276516) (:by |root) (:text |println) (:type :leaf)
                      |r $ {} (:at 1547437698992) (:by |root) (:text "|\"Dispatch:") (:type :leaf)
                      |v $ {} (:at 1518156280471) (:by |root) (:text |op) (:type :leaf)
              |v $ {} (:at 1584780634192) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |reset!) (:type :leaf)
                  |j $ {} (:at 1507399899641) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1507399884621) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399887573) (:by |root) (:text |reel-updater) (:type :leaf)
                      |j $ {} (:at 1507399888500) (:by |root) (:text |updater) (:type :leaf)
                      |r $ {} (:at 1507399891576) (:by |root) (:text |@*reel) (:type :leaf)
                      |v $ {} (:at 1507399892687) (:by |root) (:text |op) (:type :leaf)
                      |x $ {} (:at 1507399894594) (:by |root) (:text |op-data) (:type :leaf)
          |main! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |main!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |s $ {} (:at 1648960829684) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1648960829684) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
              |sT $ {} (:at 1651516456657) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1651516456657) (:by |rJG4IHzWf) (:text |.!registerLanguage) (:type :leaf)
                  |b $ {} (:at 1651516456657) (:by |rJG4IHzWf) (:text |hljs) (:type :leaf)
                  |h $ {} (:at 1651516456657) (:by |rJG4IHzWf) (:text "|\"bash") (:type :leaf)
                  |l $ {} (:at 1651516458671) (:by |rJG4IHzWf) (:text |glsl-lang) (:type :leaf)
              |t $ {} (:at 1544874433785) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1544874434638) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                  |j $ {} (:at 1544874509800) (:by |rJG4IHzWf) (:text "|\"Running mode:") (:type :leaf)
                  |r $ {} (:at 1544874440404) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544874440190) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                      |j $ {} (:at 1544874446442) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                      |r $ {} (:at 1544874449063) (:by |rJG4IHzWf) (:text "|\"dev") (:type :leaf)
                      |v $ {} (:at 1544874452316) (:by |rJG4IHzWf) (:text "|\"release") (:type :leaf)
              |v $ {} (:at 1636914348413) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1636914349962) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |j $ {} (:at 1636914351563) (:by |rJG4IHzWf) (:text |config/dev?) (:type :leaf)
                  |r $ {} (:at 1636914352112) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1636914358071) (:by |rJG4IHzWf) (:text |load-console-formatter!) (:type :leaf)
              |x $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |y $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |add-watch) (:type :leaf)
                  |j $ {} (:at 1507399915531) (:by |root) (:text |*reel) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text |:changes) (:type :leaf)
                  |v $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |fn) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280609284) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                          |j $ {} (:at 1612280610651) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                      |r $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |yD $ {} (:at 1507461684494) (:by |root) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1507461739167) (:by |root) (:text |listen-devtools!) (:type :leaf)
                  |j $ {} (:at 1624007376825) (:by |rJG4IHzWf) (:text ||k) (:type :leaf)
                  |r $ {} (:at 1507461693919) (:by |root) (:text |dispatch!) (:type :leaf)
              |yL $ {} (:at 1518157357847) (:by |root) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150136497) (:by |rJG4IHzWf) (:text |js/window.addEventListener) (:type :leaf)
                  |r $ {} (:at 1518157458163) (:by |root) (:text ||beforeunload) (:type :leaf)
                  |v $ {} (:at 1612344221583) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |D $ {} (:at 1612344222204) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                      |L $ {} (:at 1612344222530) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612344223520) (:by |rJG4IHzWf) (:text |event) (:type :leaf)
                      |T $ {} (:at 1612344224533) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yO $ {} (:at 1646150039456) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1646150045747) (:by |rJG4IHzWf) (:text |flipped) (:type :leaf)
                  |T $ {} (:at 1646150042154) (:by |rJG4IHzWf) (:text |js/setInterval) (:type :leaf)
                  |b $ {} (:at 1646150175987) (:by |rJG4IHzWf) (:text |60000) (:type :leaf)
                  |h $ {} (:at 1646150050057) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |yP $ {} (:at 1518157492640) (:by |root) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1648634362331) (:by |rJG4IHzWf) (:text |;) (:type :leaf)
                  |T $ {} (:at 1518157495438) (:by |root) (:text |let) (:type :leaf)
                  |j $ {} (:at 1518157495644) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157495826) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157496930) (:by |root) (:text |raw) (:type :leaf)
                          |j $ {} (:at 1518157497615) (:by |root) (:type :expr)
                            :data $ {}
                              |j $ {} (:at 1646150065132) (:by |rJG4IHzWf) (:text |js/localStorage.getItem) (:type :leaf)
                              |r $ {} (:at 1518157506313) (:by |root) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1544956709260) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                                  |j $ {} (:at 1527788293499) (:by |root) (:text |config/site) (:type :leaf)
                  |r $ {} (:at 1518157514334) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1533919640958) (:by |rJG4IHzWf) (:text |when) (:type :leaf)
                      |j $ {} (:at 1518157515117) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157515786) (:by |root) (:text |some?) (:type :leaf)
                          |j $ {} (:at 1518157516878) (:by |root) (:text |raw) (:type :leaf)
                      |r $ {} (:at 1518157521635) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1518157523818) (:by |root) (:text |dispatch!) (:type :leaf)
                          |j $ {} (:at 1518157669936) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                          |r $ {} (:at 1518157527987) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1624469412598) (:by |rJG4IHzWf) (:text |parse-cirru-edn) (:type :leaf)
                              |j $ {} (:at 1518157531240) (:by |root) (:text |raw) (:type :leaf)
              |yT $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |println) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text "||App started.") (:type :leaf)
          |mount-target $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469553191) (:by |rJG4IHzWf) (:text |.!querySelector) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |js/document) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:by |root) (:text ||.app) (:type :leaf)
          |persist-storage! $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1533919517365) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |persist-storage!) (:type :leaf)
              |n $ {} (:at 1646150052705) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |r $ {} (:at 1646150152124) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646150154932) (:by |rJG4IHzWf) (:text |js/console.log) (:type :leaf)
                  |b $ {} (:at 1646150157857) (:by |rJG4IHzWf) (:text "|\"persist") (:type :leaf)
              |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |j $ {} (:at 1646150150852) (:by |rJG4IHzWf) (:text |js/localStorage.setItem) (:type :leaf)
                  |r $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1544956703087) (:by |rJG4IHzWf) (:text |:storage-key) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |config/site) (:type :leaf)
                  |v $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1624469402829) (:by |rJG4IHzWf) (:text |format-cirru-edn) (:type :leaf)
                      |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |:store) (:type :leaf)
                          |j $ {} (:at 1533919515671) (:by |rJG4IHzWf) (:text |@*reel) (:type :leaf)
          |reload! $ {} (:at 1626201152815) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |D $ {} (:at 1626201153853) (:by |rJG4IHzWf) (:text |defn) (:type :leaf)
              |L $ {} (:at 1626201157449) (:by |rJG4IHzWf) (:text |reload!) (:type :leaf)
              |P $ {} (:at 1626201163076) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
              |T $ {} (:at 1626201191606) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |D $ {} (:at 1626201192115) (:by |rJG4IHzWf) (:text |if) (:type :leaf)
                  |L $ {} (:at 1626201192626) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201534497) (:by |rJG4IHzWf) (:text |nil?) (:type :leaf)
                      |j $ {} (:at 1626201194806) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                  |T $ {} (:at 1626201164538) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626201161775) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |remove-watch) (:type :leaf)
                          |j $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1614750747553) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                      |r $ {} (:at 1507461699387) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461702453) (:by |root) (:text |clear-cache!) (:type :leaf)
                      |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |add-watch) (:type :leaf)
                          |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |:changes) (:type :leaf)
                          |v $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |fn) (:type :leaf)
                              |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |reel) (:type :leaf)
                                  |j $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |prev) (:type :leaf)
                              |r $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1612280627439) (:by |rJG4IHzWf) (:text |render-app!) (:type :leaf)
                      |x $ {} (:at 1507461704162) (:by |root) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1507461706990) (:by |root) (:text |reset!) (:type :leaf)
                          |j $ {} (:at 1507461708965) (:by |root) (:text |*reel) (:type :leaf)
                          |r $ {} (:at 1507461710020) (:by |root) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1507461730190) (:by |root) (:text |refresh-reel) (:type :leaf)
                              |j $ {} (:at 1507461719097) (:by |root) (:text |@*reel) (:type :leaf)
                              |r $ {} (:at 1507461721870) (:by |root) (:text |schema/store) (:type :leaf)
                              |v $ {} (:at 1507461722724) (:by |root) (:text |updater) (:type :leaf)
                      |y $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                          |j $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"ok~") (:type :leaf)
                          |r $ {} (:at 1626777542168) (:by |rJG4IHzWf) (:text "|\"Ok") (:type :leaf)
                  |j $ {} (:at 1626201203433) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1626290831868) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                      |b $ {} (:at 1626290930377) (:by |rJG4IHzWf) (:text "|\"error") (:type :leaf)
                      |j $ {} (:at 1626201209903) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
          |render-app! $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |render-app!) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1624469436438) (:by |rJG4IHzWf) (:text |render!) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |mount-target) (:type :leaf)
                  |r $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                      |j $ {} (:at 1507400119272) (:by |root) (:text |@*reel) (:type :leaf)
                      |n $ {} (:at 1648585564758) (:by |rJG4IHzWf) (:text |schema/docs) (:type :leaf)
                  |v $ {} (:at 1623915174985) (:by |rJG4IHzWf) (:text |dispatch!) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.main) (:type :leaf)
            |r $ {} (:at 1499755354983) (:type :expr)
              :data $ {}
                |T $ {} (:at 1499755354983) (:by |root) (:text |:require) (:type :leaf)
                |j $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |respo.core) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |render!) (:type :leaf)
                        |r $ {} (:at 1499755354983) (:by |root) (:text |clear-cache!) (:type :leaf)
                |v $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1648704877144) (:by |rJG4IHzWf) (:text |docs-workflow.comp.container) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |comp-container) (:type :leaf)
                |y $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1508556737455) (:by |root) (:text |app.updater) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
                |yT $ {} (:at 1499755354983) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
                    |r $ {} (:at 1499755354983) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1499755354983) (:by |root) (:text |schema) (:type :leaf)
                |yj $ {} (:at 1507399674125) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399678694) (:by |root) (:text |reel.util) (:type :leaf)
                    |r $ {} (:at 1507399680625) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399680857) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1518156292092) (:by |root) (:text |listen-devtools!) (:type :leaf)
                |yr $ {} (:at 1507399683930) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399687162) (:by |root) (:text |reel.core) (:type :leaf)
                    |r $ {} (:at 1507399688098) (:by |root) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1507399688322) (:by |root) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1507399691010) (:by |root) (:text |reel-updater) (:type :leaf)
                        |q $ {} (:at 1518156288482) (:by |root) (:text |refresh-reel) (:type :leaf)
                |yv $ {} (:at 1507399715229) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1507399717674) (:by |root) (:text |reel.schema) (:type :leaf)
                    |r $ {} (:at 1507399755750) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1507399757678) (:by |root) (:text |reel-schema) (:type :leaf)
                |yy $ {} (:at 1527788302920) (:by |root) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1527788304925) (:by |root) (:text |app.config) (:type :leaf)
                    |r $ {} (:at 1527788306048) (:by |root) (:text |:as) (:type :leaf)
                    |v $ {} (:at 1527788306884) (:by |root) (:text |config) (:type :leaf)
                |yyT $ {} (:at 1626201173819) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626201180939) (:by |rJG4IHzWf) (:text "|\"./calcit.build-errors") (:type :leaf)
                    |j $ {} (:at 1626201183958) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626201187310) (:by |rJG4IHzWf) (:text |build-errors) (:type :leaf)
                |yyj $ {} (:at 1626290808117) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1626290810913) (:by |rJG4IHzWf) (:text "|\"bottom-tip") (:type :leaf)
                    |j $ {} (:at 1626290816153) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |r $ {} (:at 1626290825711) (:by |rJG4IHzWf) (:text |hud!) (:type :leaf)
                |yz $ {} (:at 1648960826094) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1648960826094) (:by |rJG4IHzWf) (:text |docs-workflow.config) (:type :leaf)
                    |b $ {} (:at 1648960826094) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |h $ {} (:at 1648960826094) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |T $ {} (:at 1648960826094) (:by |rJG4IHzWf) (:text |register-languages!) (:type :leaf)
                |z $ {} (:at 1651516422040) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651516422040) (:by |rJG4IHzWf) (:text "|\"highlight.js") (:type :leaf)
                    |b $ {} (:at 1651516422040) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1651516422040) (:by |rJG4IHzWf) (:text |hljs) (:type :leaf)
                |zD $ {} (:at 1651516440428) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |T $ {} (:at 1651516444113) (:by |rJG4IHzWf) (:text "|\"highlight.js/lib/languages/glsl") (:type :leaf)
                    |b $ {} (:at 1651516440428) (:by |rJG4IHzWf) (:text |:default) (:type :leaf)
                    |h $ {} (:at 1651516447805) (:by |rJG4IHzWf) (:text |glsl-lang) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.schema $ {}
        :defs $ {}
          |docs $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646491860967) (:by |rJG4IHzWf) (:text |def) (:type :leaf)
              |b $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:text |docs) (:type :leaf)
              |h $ {} (:at 1646491858255) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646491862770) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                  |X $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648813532997) (:by |rJG4IHzWf) (:text "|\"Guide") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648813534544) (:by |rJG4IHzWf) (:text |:guide) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648813538922) (:by |rJG4IHzWf) (:text "|\"guide.md") (:type :leaf)
                  |e $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648813577277) (:by |rJG4IHzWf) (:text "|\"Color") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648813580429) (:by |rJG4IHzWf) (:text |:color) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648813582494) (:by |rJG4IHzWf) (:text "|\"color.md") (:type :leaf)
                  |j $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648813596724) (:by |rJG4IHzWf) (:text "|\"Text Input") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648813601728) (:by |rJG4IHzWf) (:text |:text-input) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648813603967) (:by |rJG4IHzWf) (:text "|\"text-input.md") (:type :leaf)
                  |n $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648813610968) (:by |rJG4IHzWf) (:text "|\"Math") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648813613618) (:by |rJG4IHzWf) (:text |:math) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648813616558) (:by |rJG4IHzWf) (:text "|\"math.md") (:type :leaf)
                  |q $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648813635277) (:by |rJG4IHzWf) (:text "|\"Shapes") (:type :leaf)
                      |h $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648813637782) (:by |rJG4IHzWf) (:text |:shapes) (:type :leaf)
                      |l $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648705062222) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648813641622) (:by |rJG4IHzWf) (:text "|\"shapes.md") (:type :leaf)
                      |o $ {} (:at 1648813645696) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813647077) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1651434115536) (:by |rJG4IHzWf) (:text "|\"shapes/m.mdes") (:type :expr)
                            :data $ {}
                              |D $ {} (:at 1648813648860) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813651543) (:by |rJG4IHzWf) (:text "|\"Container") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813655664) (:by |rJG4IHzWf) (:text |:container) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813664179) (:by |rJG4IHzWf) (:text "|\"shapes/container.md") (:type :leaf)
                              |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813671694) (:by |rJG4IHzWf) (:text "|\"Rectangle") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813673547) (:by |rJG4IHzWf) (:text |:rect) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813675069) (:by |rJG4IHzWf) (:text "|\"shapes/rect.md") (:type :leaf)
                              |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813678891) (:by |rJG4IHzWf) (:text "|\"Circle") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813680854) (:by |rJG4IHzWf) (:text |:circle) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813683292) (:by |rJG4IHzWf) (:text "|\"shapes/circle.md") (:type :leaf)
                              |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813687723) (:by |rJG4IHzWf) (:text "|\"Text") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813688898) (:by |rJG4IHzWf) (:text |:text) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813690112) (:by |rJG4IHzWf) (:text "|\"shapes/text.md") (:type :leaf)
                              |o $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813695230) (:by |rJG4IHzWf) (:text "|\"Graphics") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813698294) (:by |rJG4IHzWf) (:text |:graphics) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813701697) (:by |rJG4IHzWf) (:text "|\"shapes/graphics.md") (:type :leaf)
                              |q $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813707219) (:by |rJG4IHzWf) (:text "|\"List") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813717825) (:by |rJG4IHzWf) (:text |:create-list) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813715424) (:by |rJG4IHzWf) (:text "|\"shapes/create-list.md") (:type :leaf)
                              |s $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813725595) (:by |rJG4IHzWf) (:text "|\"Polyline") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813728753) (:by |rJG4IHzWf) (:text |:polyline) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813731497) (:by |rJG4IHzWf) (:text "|\"shapes/polyline.md") (:type :leaf)
                              |t $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813738714) (:by |rJG4IHzWf) (:text "|\"Line Segments") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813742066) (:by |rJG4IHzWf) (:text |:line-segments) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813744690) (:by |rJG4IHzWf) (:text "|\"shapes/line-segments.md") (:type :leaf)
                              |u $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1651434109720) (:by |rJG4IHzWf) (:text "|\"Mesh") (:type :leaf)
                                  |h $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1651434112779) (:by |rJG4IHzWf) (:text |:mesh) (:type :leaf)
                                  |l $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813647502) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1651434126029) (:by |rJG4IHzWf) (:text "|\"shapes/mesh.md") (:type :leaf)
                  |s $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648813753656) (:by |rJG4IHzWf) (:text "|\"Components") (:type :leaf)
                      |h $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648813756203) (:by |rJG4IHzWf) (:text |:components) (:type :leaf)
                      |l $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648813749003) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648813758994) (:by |rJG4IHzWf) (:text "|\"components.md") (:type :leaf)
                      |o $ {} (:at 1648813762061) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813763351) (:by |rJG4IHzWf) (:text |:children) (:type :leaf)
                          |b $ {} (:at 1648813763957) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648813764258) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
                              |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813769136) (:by |rJG4IHzWf) (:text "|\"Arrow") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813771921) (:by |rJG4IHzWf) (:text |:arrow) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813779120) (:by |rJG4IHzWf) (:text "|\"components/arrow.md") (:type :leaf)
                              |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813784095) (:by |rJG4IHzWf) (:text "|\"Button") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813786319) (:by |rJG4IHzWf) (:text |:button) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813788254) (:by |rJG4IHzWf) (:text "|\"components/button.md") (:type :leaf)
                              |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813794797) (:by |rJG4IHzWf) (:text "|\"Messages") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813798844) (:by |rJG4IHzWf) (:text |:messages) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813801758) (:by |rJG4IHzWf) (:text "|\"components/messages.md") (:type :leaf)
                              |o $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813809687) (:by |rJG4IHzWf) (:text "|\"Slider Point") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813813184) (:by |rJG4IHzWf) (:text |:slider-point) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813815504) (:by |rJG4IHzWf) (:text "|\"components/slider-point.md") (:type :leaf)
                              |q $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813820815) (:by |rJG4IHzWf) (:text "|\"Slider") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813822277) (:by |rJG4IHzWf) (:text |:slider) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813823749) (:by |rJG4IHzWf) (:text "|\"components/slider.md") (:type :leaf)
                              |s $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813829367) (:by |rJG4IHzWf) (:text "|\"Spin Slider") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813833156) (:by |rJG4IHzWf) (:text |:spin-slider) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813835676) (:by |rJG4IHzWf) (:text "|\"components/spin-slider.md") (:type :leaf)
                              |sT $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1651516128581) (:by |rJG4IHzWf) (:text "|\"Drag Point") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1651516209148) (:by |rJG4IHzWf) (:text |:drag-point) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1651516146486) (:by |rJG4IHzWf) (:text "|\"components/drag-point.md") (:type :leaf)
                              |t $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                                  |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                                      |b $ {} (:at 1648813841637) (:by |rJG4IHzWf) (:text "|\"Switch") (:type :leaf)
                                  |h $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                                      |b $ {} (:at 1648813844600) (:by |rJG4IHzWf) (:text |:switch) (:type :leaf)
                                  |l $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                    :data $ {}
                                      |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                                      |b $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:type :expr)
                                        :data $ {}
                                          |T $ {} (:at 1648813764898) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                                          |b $ {} (:at 1648813851149) (:by |rJG4IHzWf) (:text "|\"components/switch.md") (:type :leaf)
                  |t $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:text |{}) (:type :leaf)
                      |b $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:text |:title) (:type :leaf)
                          |b $ {} (:at 1648813861036) (:by |rJG4IHzWf) (:text "|\"Filters") (:type :leaf)
                      |h $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:text |:key) (:type :leaf)
                          |b $ {} (:at 1648813864302) (:by |rJG4IHzWf) (:text |:filters) (:type :leaf)
                      |l $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:text |:content) (:type :leaf)
                          |b $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1648813855987) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
                              |b $ {} (:at 1648813872862) (:by |rJG4IHzWf) (:text "|\"filters.md") (:type :leaf)
          |load-doc $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
            :data $ {}
              |T $ {} (:at 1646492046361) (:by |rJG4IHzWf) (:text |defmacro) (:type :leaf)
              |b $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:text |load-doc) (:type :leaf)
              |h $ {} (:at 1646492039492) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492043321) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
              |l $ {} (:at 1646492047430) (:by |rJG4IHzWf) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1646492049914) (:by |rJG4IHzWf) (:text |read-file) (:type :leaf)
                  |b $ {} (:at 1646492050611) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1646492051158) (:by |rJG4IHzWf) (:text |str) (:type :leaf)
                      |b $ {} (:at 1646492054009) (:by |rJG4IHzWf) (:text "|\"docs/") (:type :leaf)
                      |h $ {} (:at 1646492057193) (:by |rJG4IHzWf) (:text |filename) (:type :leaf)
          |store $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |def) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1499755354983) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1499755354983) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1499755354983) (:by |root) (:text |{}) (:type :leaf)
                          |j $ {} (:at 1584781004285) (:by |rJG4IHzWf) (:type :expr)
                            :data $ {}
                              |T $ {} (:at 1584781007054) (:by |rJG4IHzWf) (:text |:cursor) (:type :leaf)
                              |j $ {} (:at 1584781007287) (:by |rJG4IHzWf) (:type :expr)
                                :data $ {}
                                  |T $ {} (:at 1584781007486) (:by |rJG4IHzWf) (:text |[]) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.schema) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
      |app.updater $ {}
        :defs $ {}
          |updater $ {} (:at 1499755354983) (:type :expr)
            :data $ {}
              |T $ {} (:at 1499755354983) (:by |root) (:text |defn) (:type :leaf)
              |j $ {} (:at 1499755354983) (:by |root) (:text |updater) (:type :leaf)
              |r $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1499755354983) (:by |root) (:text |store) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |r $ {} (:at 1584874633844) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |v $ {} (:at 1519489491135) (:by |root) (:text |op-id) (:type :leaf)
                  |x $ {} (:at 1519489492110) (:by |root) (:text |op-time) (:type :leaf)
              |v $ {} (:at 1499755354983) (:type :expr)
                :data $ {}
                  |T $ {} (:at 1627849233602) (:by |rJG4IHzWf) (:text |case-default) (:type :leaf)
                  |j $ {} (:at 1499755354983) (:by |root) (:text |op) (:type :leaf)
                  |l $ {} (:at 1627849235240) (:by |rJG4IHzWf) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1627849235639) (:by |rJG4IHzWf) (:text |do) (:type :leaf)
                      |j $ {} (:at 1627849235881) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1627849236652) (:by |rJG4IHzWf) (:text |println) (:type :leaf)
                          |j $ {} (:at 1627849247340) (:by |rJG4IHzWf) (:text "|\"unknown op:") (:type :leaf)
                          |r $ {} (:at 1627849241947) (:by |rJG4IHzWf) (:text |op) (:type :leaf)
                      |r $ {} (:at 1627849245294) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                  |n $ {} (:at 1507399852251) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1507399855618) (:by |root) (:text |:states) (:type :leaf)
                      |j $ {} (:at 1584874625235) (:by |rJG4IHzWf) (:type :expr)
                        :data $ {}
                          |T $ {} (:at 1584874626558) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
                          |j $ {} (:at 1584874628374) (:by |rJG4IHzWf) (:text |store) (:type :leaf)
                          |r $ {} (:at 1584874632002) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
                  |t $ {} (:at 1518157547521) (:by |root) (:type :expr)
                    :data $ {}
                      |T $ {} (:at 1518157657108) (:by |root) (:text |:hydrate-storage) (:type :leaf)
                      |j $ {} (:at 1584874637339) (:by |rJG4IHzWf) (:text |data) (:type :leaf)
        :ns $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
            |T $ {} (:at 1499755354983) (:by |root) (:text |ns) (:type :leaf)
            |j $ {} (:at 1499755354983) (:by |root) (:text |app.updater) (:type :leaf)
            |r $ {} (:at 1584874614885) (:by |rJG4IHzWf) (:type :expr)
              :data $ {}
                |T $ {} (:at 1584874616480) (:by |rJG4IHzWf) (:text |:require) (:type :leaf)
                |j $ {} (:at 1584874616720) (:by |rJG4IHzWf) (:type :expr)
                  :data $ {}
                    |j $ {} (:at 1584874620034) (:by |rJG4IHzWf) (:text |respo.cursor) (:type :leaf)
                    |r $ {} (:at 1584874621356) (:by |rJG4IHzWf) (:text |:refer) (:type :leaf)
                    |v $ {} (:at 1584874621524) (:by |rJG4IHzWf) (:type :expr)
                      :data $ {}
                        |j $ {} (:at 1584874623096) (:by |rJG4IHzWf) (:text |update-states) (:type :leaf)
        :proc $ {} (:at 1499755354983) (:type :expr)
          :data $ {}
  :users $ {}
    |rJG4IHzWf $ {} (:avatar nil) (:id |rJG4IHzWf) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
