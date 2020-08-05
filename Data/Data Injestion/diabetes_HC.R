
library(readxl)
hc_dspg <- read_excel("~/Git/DSPGFOLAR/hc_dspg.xlsx")

library(ggplot2)


health_outcomes <- data.frame(val=sample(seq(1,50), 3), obesity = c(29,30,40), diabetes=c(10.9, 10.5, 14.6),
                              location = c("United States", "Virginia", "Petersburg Va"))

health_outcomes$location
health_outcomes$location <- factor(health_outcomes$location, levels = health_outcomes$location[order(health_outcomes$diabetes)])

ggplot(data = health_outcomes, aes(x =location, y =diabetes, fill = diabetes)) + geom_bar(stat = "identity") +
  ggtitle(label = "Diabetes Health Outcomes")