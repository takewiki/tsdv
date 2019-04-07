#' 插入柱状图-维度数据
#'
#' @param data 数据源
#' @param x 第一个维度
#' @param y 第二个维度
#' @param z 第三个维度，也指series.
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kBar.recharts3.dim();
kBar.recharts3.dim <- function(data=kBar_dim_data,
                               x="seller",
                               y="saleNum",
                               z="weekDay"){
  p <- eBar(dat = data,
       xvar = as.formula(paste("~",x)),
       yvar = as.formula(paste("~",y)),
       series = as.formula(paste("~",z)));
  print(p);
}
