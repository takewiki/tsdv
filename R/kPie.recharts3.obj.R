#' 插入饼图-默认数据列
#'
#' @param data 数据源
#' @param title 标题
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kPie.recharts3.obj();
kPie.recharts3.obj <- function(data=kPie_obj_data,title='test'){
  p <- ePie(data)+eTitle(title);
  print(p);

}
