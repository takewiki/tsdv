#' 插入线图-基本
#'
#' @param data 数据集
#' @param theme 主题色系
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kLine.recharts3.obj();
kLine.recharts3.obj <- function (data=WorldPhones,theme=1){
 p <-  eLine(dat = data, theme=theme);
 print(p);

}
