#EDA mtcars
plot(mtcars$mpg ~ mtcars$cyl,
     xlab="cilindros", ylab = "millas por galon",
     main="relacion cilindros y millas por galon")

plot(mtcars$mpg ~ mtcars$hp,
     xlab="Caballos de fuerza", ylab="Millas por galon",
     main="Relacion caballos de fuerza y millas por galon")

plot(orangeec$Unemployment ~ orangeec$Education.invest...GDP,
     xlab="Inversion educacion(%PIB)", ylab="Desempleo",
     main="Relacion inversion en educacion y desempleo")

plot(orangeec$GDP.PC ~ orangeec$Creat.Ind...GDP,
     xlab="Aporte economia naraja al PIB", ylab="PIB per capita",
     main="Relaion economia naranja y PIB per capita")

# histograma (package=ggplot2)
qplot(mtcars$hp, geom="histogram",
      xlab="Caballos de fuerza",
      main="Carros segun caballos de fuerza")

ggplot(mtcars, aes(x=hp))+
  geom_histogram(binwidth = 30)+
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot()+geom_histogram(data=mtcars,
                        aes(x=hp), fill="blue", color="red", binwidth = 20)+
  labs(x="Caballos de fuerza", y="Cantidad de carros",
       title="Caballos de fuerza en carros seleccionados")+
  xlim(c(80, 280))+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# hist orangeec
ggplot()+geom_histogram(data=orangeec,
                        aes(x=GDP.PC), fill="blue", color="red", binwidth = 2000)+
  labs(x="PIB per capita", y="Cantidad de paises",
       title="PIB per capita en paises LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+geom_histogram(data=orangeec,
                        aes(x=Creat.Ind...GDP), fill="blue", color="red", binwidth = 1)+
  labs(x="Aporte economia naranja al PIB", y="Cantidad de paises",
       title="contribucion economia narajan en PIB en paises LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot()+geom_histogram(data=orangeec,
                        aes(x=Internet.penetration...population), fill="red", color="yellow", binwidth=5)+
  labs(x="Penetracion internet", y="Cantidad de paises",
       title="Penetracion de internet en paises LATAM")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# boxplot
boxplot(mtcars$hp,
        ylab="Caballos de fuerza",
        main="Caballos de fuerza en carros")

ggplot(mtcars, aes(x=as.factor(cyl), y=hp, fill=cyl))+
  geom_boxplot(alpha=0.6)+
  labs(x="cilindros", y="caballos de fuerza",
       title="Caballos de fuerza segun cilindros")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(), panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(x=am, y=mpg, fill=am))+
  geom_boxplot(alpha=0.6)+
  labs(x="Tipo de caja", y="Millas por galon",
       title="Millas por galon segun tipos de caja")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

rm(mtcars)

mtcars$am <- factor(mtcars$am, levels = c(1, 0),
                    labels=c("Manual", "Automatico"))


#orangeec

economy <- mean(orangeec$GDP.PC)
economy

orangeec <- orangeec %>%
  mutate(Strong_economy = ifelse(GDP.PC < economy,
                                 "Por debajo del promedio en PIB per capita",
                                 "Sobre el promedio de PIB per capita"))

ggplot(orangeec, aes(x=Strong_economy, y=Creat.Ind...GDP,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de pais", y="Aporte economia naranja al PIB",
       title="Aporte economia naranja en PIB paises LATAM con alto y bajo PIB per capita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(orangeec, aes(x=Strong_economy, y=Internet.penetration...population,
                     fill=Strong_economy))+
  geom_boxplot(alpha=0.4)+
  labs(x="Tipo de pais", y="Penetracion de internet",
       title="Penetracion de internet en paises LATAM con alto y bajo PIB per capita")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

# scatterplot con dos variables
ggplot(mtcars, aes(hp, mpg))+
  geom_point()+
  labs(x="Caballos de fuerza", y="Millas por galon",
       title="Relacion caballos de fuerza y millas por galon")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())

ggplot(mtcars, aes(wt, hp))+
  geom_point()+
  labs(x="Peso", y="Potencia",
       title="Relacion peso y potencia")+
  theme(legend.position = "none")+
  theme(panel.background = element_blank(),
        panel.grid.major = element_blank(),
        panel.grid.minor = element_blank())


ggplot(mtcars, aes(hp, qsec))+
  geom_point(aes(color=am, size=cyl))+
  labs(x="caballos de fuerza", y="tiempo en 1/4 milla",
       title="caballos-velocidad segun cilindraje y tipo de caja")

ggplot(orangeec, aes(Internet.penetration...population, Creat.Ind...GDP))+
  geom_point(aes(color=factor(Strong_economy), size=GDP.Growth..))+
  labs(x="Penetracion internet", y="Aporte economia naranja PIB",
       title="Internet y aporte economia naranja segun economia y crecimiento PIB")

my_graph <- ggplot(orangeec, aes(Internet.penetration...population,
                                 Creat.Ind...GDP, label=row.names(orangeec)))+
  geom_point()+
  labs(x="Penetracion internet", y="Aporte economia naranja",
       title="Penetreacion internet y aporte economia naranja")
my_graph
p = ggplotly(my_graph)
p

library(dplyr)
library(stringr)
# filter in of the dataset
merc <- mtcars %>%
  filter(str_detect(mtcars[1,], "Merc"))
merc
View(mtcars)



#pairs graphical correlation 
pairs(mtcars)
rm(mtcars)
mtcars
newdata <- subset(mtcars, select=c(1,6,7,10,11))
pairs(newdata)

pairs(mtcars[,-c(0,2,3,4,5,8,9)])


Eficientes <- filter(mtcars, mpg >= 30)
Eficientes

pairs(Eficientes[, 1:5])
rm(mtcars)

#cor numerical correlation of the variables
cor(mtcars[, 1:5])
cor(newdata)

# standart desviation 
desv <- sd(mtcars$mpg)
mean(mtcars$mpg)

#
prom <- mean(mtcars$mpg)
coefVar <- (desv/prom)*100
coefVar
# as the average is higher than 25% it means that the data is very despersed


# another visualizarions
eficientes <- mean(mtcars$mpg)
mtcars <- mtcars %>%
  mutate(Mas_eficientes=ifelse(mpg<eficientes,
                               "Bajo promedio", "en o sobre promedio"))

Mas_veloces <- mtcars[mtcars$qsec<16,]
Mas_veloces

mtcars <- mtcars %>%
  mutate(Velocidad_cuarto_milla=ifelse(qsec<16,
                                       "menos 16 secs", "mas de 16 segs"))
mtcars <- mtcars %>%
  mutate(Peso_kilos=(wt/2)*1000)
mtcars <- mtcars %>%
  mutate(Peso=ifelse(Peso_kilos <= 1500,
                     "livianos", "pesados"))



mtcars %>%
  arrange(desc(Peso_kilos))

library(ggplot2)
ggplot(mtcars, aes(x=cyl, y=mpg, size=Peso_kilos))+
  geom_point()+
  facet_wrap(~am)




