

  DiagrammeR::mermaid("
                      gantt
                      dateFormat  YYYY-MM-DD
                      title 现金管理甘特图

                      section 筹资阶段
                      任务1           :done,          first_1,    2014-01-06, 2014-01-08
                      任务2                :active,        first_2,    2014-01-09, 3d
                      任务3                 :               first_3,    after first_2, 5d
                      任务4            :               first_4,    after first_3, 5d

                      section 经营阶段
                      任务5      :crit, done,    import_1,   2014-01-06,24h
                      任务6      :crit, done,    import_2,   after import_1, 2d
                      任务7 :crit, active,  import_3,   after import_2, 3d
                      任务8            :crit,          import_4,   after import_3, 5d

                      section 投资阶段
                      任务9                  :active,        extras_1,   after import_4,  3d
                      任务10                :               extras_2,   after extras_1, 20h
                      任务11            :               extras_3,   after extras_1, 48h
                      ")


