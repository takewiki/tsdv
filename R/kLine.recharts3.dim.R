#' 插入线图-维度数据
#'
#' @param data 数据源
#' @param x  第一个维度
#' @param y  第二个维度
#' @param z  第三个维度，也可以是series
#'
#' @import recharts3
#' @return 返回值
#' @export
#'
#' @examples kLine.recharts3.dim();
kLine.recharts3.dim <- function (data=df2,
                                 x="weekDay",
                                 y="saleNum",
                                 z="seller"){

  p <- eLine(dat = data,
        xvar=as.formula(paste("~",x)),
        yvar= as.formula(paste("~",y)),
        series=as.formula(paste("~",z)));
  print(p);
}
