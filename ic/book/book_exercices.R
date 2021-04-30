# Ejercicio cap 4

# use packages to 
install.packages("readxl")
library(readxl)
data_regmult <- read_excel("regmult.xls")

r1 <- lm(`I (T)` ~ `CE (T)` +  `CD (T)`, data_regmult)
r2 <- lm(`I (T)` ~ `Ldies (T)` + `LEl (T)`, data_regmult)
r3 <- lm(`I (T)` ~ `V (T)`, data_regmult)
r4 <- lm(`I (T)` ~ `CE (T)` + `LEl (T)`, data_regmult)
r5 <- lm(`I (T)` ~ `CD (T)` + `Ldies (T)`, data_regmult)
r6 <- lm(`I (T)` ~ `CE (T)` + `Ldies (T)` + `LEl (T)` + `V (T)`, data_regmult)
r7 <- lm(`I (T)` ~ `CE (T)` +  `CD (T)` + `V (T)`, data_regmult)

which.max(c(summary(r1)$adj.r.squared,
summary(r2)$adj.r.squared,
summary(r3)$adj.r.squared,
summary(r4)$adj.r.squared,
summary(r5)$adj.r.squared,
summary(r6)$adj.r.squared,
summary(r7)$adj.r.squared))
summary(r2)
summary(r6)

which.max(c(AIC(r1),
AIC(r2),
AIC(r3),
AIC(r4),
AIC(r5),
AIC(r6),
AIC(r7)))

which.max(c(BIC(r1),
BIC(r2),
BIC(r3),
BIC(r4),
BIC(r5),
BIC(r6),
BIC(r7)))

# segun el r^2 el mejor modelo es el r6, mientras que con los dos criterios de informacion el mejor modelo es el r3

# Prueba de modelos anidados
anova(r1, r7)
# 
anova(r2, r6)
anova(r3, r6)
anova(r3, r7)
anova(r4, r6)
















