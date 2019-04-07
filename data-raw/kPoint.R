


library(recharts3)

ePoints(iris[,3:5],
        xvar = as.formula(paste("~","Petal.Length")),
        yvar = as.formula(paste("~","Petal.Width")),
        series = as.formula(paste("~","Species")), theme = 1)

