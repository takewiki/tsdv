#' 插入条形图-默认数据列
#'
#' @param data 数据源
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kBar.recharts3.obj.horiz();
kBar.recharts3.obj.horiz <- function (data = kBar_obj_data){
 p <- eBar(dat = data,horiz = TRUE);
 print(p);
}
