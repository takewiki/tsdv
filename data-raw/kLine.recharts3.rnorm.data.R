kline_rnorm_data <- cut(rnorm(1000), -4:4);

devtools::use_data(kline_rnorm_data,overwrite = TRUE);
