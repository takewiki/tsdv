tsda::libraryEx('plyr');
## Loading required package: plyr
dat = ddply(iris, .(Species), colwise(mean))
rownames(dat) = dat[,1]
kBar_obj_data = dat[, -1]
devtools::use_data(kBar_obj_data,overwrite = T);
