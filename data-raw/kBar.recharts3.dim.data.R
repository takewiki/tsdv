#library(recharts3)
kBar_dim_data <- data.frame(
  saleNum=c(10,20,30,40,50,60,70,15,25,35,45,55,65,75,25,35,45,55,65,75,85),
  seller=c(rep("Yellow",7), rep("Red",7), rep("White",7)),
  weekDay = c(rep(c("Mon","Tue","Wed","Thu","Fri","Sat","Sun"),3)),
  stringsAsFactors =FALSE
)
#dat <- df2
#xvar=~weekDay; yvar= ~saleNum; series=~seller
#eBar(df2, xvar = ~seller, ~saleNum, ~weekDay )
devtools::use_data(kBar_dim_data,overwrite = T);
