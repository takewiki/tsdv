#' 用于生成甘特图
#'
#' @param title 标题
#' @param dataFileName 文件
#'
#' @return 返回值
#' @export
#' @include gantt_DiagrammeR_data.R
#' @import DiagrammeR
#'
#' @examples gantt_DiagrammeR_chart();
gantt_DiagrammeR_chart <- function(title="这是示例甘特图",
                                   dataFileName="~/pkgs/tsdv/inst/extdata/gantt_dynamic_data.xlsx")
  {
  gantt_title <-title
  gantt_data <-gantt_DiagrammeR_data(dataFileName);
  gantt_body <-  paste0(
    # mermaid "header", each component separated with "\n" (line break)
    "gantt", "\n",
    "dateFormat  YYYY-MM-DD", "\n",
    "title ",gantt_title, "\n",
    # unite the first two columns (task & status) and separate them with ":"
    # then, unite the other columns and separate them with ","
    # this will create the required mermaid "body"
    gantt_data, "\n"
  );
  m <- mermaid(gantt_body);

  m$x$config = list(ganttConfig = list(
    axisFormatter = list(list(
      "%b %d, %Y"
      ,htmlwidgets::JS(
        'function(d){ return d.getDay() == 1 }'
      )
    ))
  ))
return(m);

}

