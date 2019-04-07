gantt_plotly <- function() {
  library(plotly)

  data('GanttChart_updated');
  df <-GanttChart_updated;

  df$Start  <- as.Date(df$Start, format = "%m/%d/%Y")
  client    <- "Sample Client"
  cols      <- RColorBrewer::brewer.pal(length(unique(df$Resource)), name = "Set3")
  df$color  <- factor(df$Resource, labels = cols)

  p <- plot_ly()
  for(i in 1:(nrow(df) - 1)){
    p <- add_trace(p,
                   x = c(df$Start[i], df$Start[i] + df$Duration[i]),
                   y = c(i, i),
                   mode = "lines",
                   line = list(color = df$color[i], width = 20),
                   showlegend = F,
                   hoverinfo = "text",
                   text = paste("Task: ", df$Task[i], "<br>",
                                "Duration: ", df$Duration[i], "days<br>",
                                "Resource: ", df$Resource[i]),
                   evaluate = T
    )
  }

  p

}



df;
