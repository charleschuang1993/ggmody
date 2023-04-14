
#' For ggplot2 theme: modify the theme of current input ggplot2
#' This function could add new theme for original ggplot item.
#' This added theme renew the text size, axis size, and lines thickness to generate new clearing plot
#'
#' @param plot_variable a ggplot product you want to change its visualization
#' @return A renew plot
#' @export

modified_theme_for_ggplot2 <-   function(plot_variable){
    plot_variable_new <- plot_variable+theme(panel.background = element_rect(fill="transparent"),
        legend.text = element_text(size=15,face="bold"),legend.key.size = unit(1, 'cm'),
        legend.key = element_rect(colour = "transparent", fill = "transparent"),
        legend.position = "right",
        legend.title = element_blank(),
        axis.text.x = element_text(size=25,face="bold"),axis.text.y = element_text(size=25,face="bold"),
        axis.line.x = element_line(color = "black", linewidth = 1.5),
        axis.line.y = element_line(color = "black", linewidth = 1.5),
        strip.text.y = element_text(size = 13, color = "black", face = "bold",angle=0),
        strip.background = element_rect(size = 3, color = "transparent",fill="transparent"),
        axis.title.y = element_text(colour="black",face="bold", size = 30),
        axis.title.x = element_text(colour="black",face="bold", size = 30),
        axis.ticks = element_line(color = "black", linewidth = 1),
        axis.ticks.length = unit(0.5, "cm"),
        plot.margin = unit(c(1,1,1,1), "cm"),
        plot.title = element_text(color="black", size=24, face="bold", hjust=0.5))
        return(plot_variable_new)
 }
