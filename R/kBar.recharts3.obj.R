#' 插入柱状图-默认数据
#'
#' @param data 数据源
#' @param horiz 默认为柱状图，设置为FALSE,否则为条形图
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kBar.recharts3.obj();
kBar.recharts3.obj <- function(data=kBar_obj_data,horiz=FALSE){
  p <- eBar(dat = data,horiz = horiz);
  print(p);

}
