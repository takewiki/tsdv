#' 插入柱状图-正态分布
#'
#' @param data 数据源
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kBar.recharts3.rnorm();
kBar.recharts3.rnorm <- function (data=kBar_rnorm_data){
  p <- eBar(data);
  print(p);
}
