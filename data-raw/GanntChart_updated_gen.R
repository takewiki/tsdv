library(readxl)
GanttChart_updated <- read_excel("~/pkgs/tsdv/inst/extdata/GanttChart-updated.xlsx")
GanttChart_updated <- as.data.frame(GanttChart_updated);
devtools::use_data(GanttChart_updated,internal = FALSE,overwrite = TRUE);
