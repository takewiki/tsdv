#' 用于diagrammeR的甘特图的数据准备
#'
#' @param file 文件名
#'
#' @return 返回值
#' @export
#' @import readxl
#'
#' @examples gantt_DiagrammeR_data();
gantt_DiagrammeR_data <- function(file="~/pkgs/tsdv/inst/extdata/gantt_dynamic_data.xlsx") {
  #file='./data-raw/gantt_dynamic_data.xlsx';
  gantt_dynamic_data <- read_excel(file)
  gantt_dynamic_data <- as.data.frame(gantt_dynamic_data);

  gantt_dynamic_data_splited <- split(gantt_dynamic_data,gantt_dynamic_data$phrase);
  gantt_dynamic_data_splited;
  phrase_names <-names(gantt_dynamic_data_splited);
  phrase_counts <- length(phrase_names);
  res <- "";
  # deal with phrase
  for (i in 1:phrase_counts){
    res <- paste(res, paste("section ",phrase_names[i],"\n",sep = ""),sep="");
    data <- gantt_dynamic_data_splited[[i]];
    #deal with row
    for (j in 1:nrow(data)){
      row <- data[j,];
      res1 <-paste(row$task,row$status,sep=":");
      res2 <-paste(row$pos,row$start,row$end,sep=',');
      res3 <- paste(res1,res2,sep=',');
      res4 <- paste(res3,"\n",sep="");
      res <- paste(res,res4,sep="");

    }

  }

  res;

}




