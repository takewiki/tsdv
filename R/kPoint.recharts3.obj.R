
#' 插入recharts3的默认表数据
#'
#' @param data 输入数据
#' @param theme 输入主题代码
#'
#' @return 返回值
#' @export
#' @import recharts3
#'
#' @examples kPoint.recharts3.obj();
kPoint.recharts3.obj <- function (data=iris[, 3:5],theme=2){
  p <- ePoints(dat = data, theme = theme);
  print(p);
}
