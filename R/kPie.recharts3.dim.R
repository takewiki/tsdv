#' 插入饼图-维度数据
#'
#' @param data 数据源
#' @param x name var.
#' @param y value var.
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kPie.recharts3.dim();
kPie.recharts3.dim <- function(data=kPie_dim_data,x="stdName",y="val1"){
  p <- ePie(dat = data,namevar =as.formula(paste("~",x)) ,datavar =as.formula(paste("~",y)) );
  print(p);
}
