#' 插入散步图，按维度指定数据列
#'
#' @param data 数据源
#' @param x  X轴数据
#' @param y  Y辆数据
#' @param z  Z轴数据，也称为分层数据
#' @param theme  主题
#'
#' @return 返回值
#' @import recharts3
#' @export
#'
#' @examples kPoint.recharts3.dim();
kPoint.recharts3.dim <- function(data=iris[,3:5],
                                 x="Petal.Length",
                                 y="Petal.Width",
                                 z="Species",
                                 theme=1
                                   ){
  #library(recharts3)

  p <- ePoints(dat = data,
          xvar = as.formula(paste("~",x)),
          yvar = as.formula(paste("~",y)),
          series = as.formula(paste("~",z)), theme = theme);
  print(p)

}
