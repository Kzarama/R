orange = read.csv("orangeec.csv")
View(orange)

pairs(orange[,2:6])

pairs(orange[,5:10])
newdata <- subset(orange, select=c(5,6,10,11,12,13))
newdata
pairs(newdata)

cor(orange[,2:6], use="complete.obs")

cor(orange[,5:10], use="complete.obs")

cor(newdata)

# stadistic desviatiion
desv <- sd(orange$Internet.penetration...population)
prom <- mean(orange$Internet.penetration...population)
coefVar <- (desv/prom)*100
coefVar

summary(orange)
desv <- sd(orange$Creat.Ind...GDP, na.rm = TRUE)
prom <- mean(orange$Creat.Ind...GDP, na.rm=TRUE)
coefVar <- (desv/prom)*100
coefVar

orange <- orange %>%
  mutate(Crecimiento_GDP=ifelse(GDP.Growth..>=2.5,
                                "2.5% o mas", "menos de 2.5%"))

orange <- orange %>%
  mutate(Anaranjados=ifelse(Creat.Ind...GDP>=2.5,
                            "Mas anaranjados", "Menos anaranjados"))

#ranking (arrange para ordenar)
orange %>%
  arrange(desc(Creat.Ind...GDP))

TopNaranjas <- orange %>%
  filter(Country %in% c("Mexico", "Panama", "Argentina", "Colombia", "Brazil"))

TopNaranjas %>%
  arrange(desc(Creat.Ind...GDP))

ggplot(TopNaranjas, aes(x=Internet.penetration...population,
       y=Services...GDP, size=GDP.PC))+
  geom_point()+
  facet_wrap(~Country)

ggplot(TopNaranjas, aes(x=Education.invest...GDP,
                        y=Creat.Ind...GDP, size=Unemployment))+
  geom_point()+
  facet_wrap(~Country)

#graphics with color
library(RColorBrewer)
myColors <- brewer.pal(9, "Reds")
ggplot(TopNaranjas, aes(x=Internet.penetration...population,
                        y=GDP.PC, fill=Creat.Ind...GDP))+
  geom_tile()+
  facet_wrap(~Country)+
  scale_fill_gradientn(colors=myColors)

library(rmarkdown)
library(knitr)



