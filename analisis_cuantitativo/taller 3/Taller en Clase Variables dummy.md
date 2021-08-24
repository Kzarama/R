
```


```R

```


```R

```


<table class="dataframe">
<caption>A data.frame: 6 × 5</caption>
<thead>
	<tr><th></th><th scope=col>Sexo</th><th scope=col>Salario</th><th scope=col>Educación</th><th scope=col>Experiencia</th><th scope=col>Años.Compañía</th></tr>
	<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><th scope=row>1</th><td>1</td><td>360.4426</td><td>19</td><td>4.0</td><td>4.3</td></tr>
	<tr><th scope=row>2</th><td>1</td><td>311.8287</td><td>16</td><td>3.3</td><td>1.3</td></tr>
	<tr><th scope=row>3</th><td>0</td><td>380.0386</td><td>13</td><td>4.1</td><td>4.6</td></tr>
	<tr><th scope=row>4</th><td>0</td><td>287.8602</td><td>14</td><td>5.5</td><td>4.8</td></tr>
	<tr><th scope=row>5</th><td>0</td><td>375.6582</td><td>13</td><td>0.6</td><td>4.4</td></tr>
	<tr><th scope=row>6</th><td>0</td><td>373.0003</td><td>16</td><td>1.6</td><td>3.2</td></tr>
</tbody>
</table>





```R

```


```R

```


    
    Call:
    lm(formula = Salario ~ Educación + Experiencia + Años.Compañía, 
        data = data)
    
    Residuals:
        Min      1Q  Median      3Q     Max 
    -88.030 -33.594   3.244  32.657  67.205 
    
    Coefficients:
                  Estimate Std. Error t value Pr(>|t|)    
    (Intercept)   269.9039    48.4492   5.571 1.27e-06 ***
    Educación       4.6083     2.8421   1.621    0.112    
    Experiencia     1.5658     3.3570   0.466    0.643    
    Años.Compañía   0.3657     4.6906   0.078    0.938    
    ---
    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
    
    Residual standard error: 39.86 on 46 degrees of freedom
    Multiple R-squared:  0.05694,	Adjusted R-squared:  -0.004563 
    F-statistic: 0.9258 on 3 and 46 DF,  p-value: 0.4359




```R

```


```R

```


    
    Call:
    lm(formula = Salario ~ Sexo + Educación + Experiencia + Años.Compañía + 
        Sexo * Educación * Experiencia * Años.Compañía, data = data)
    
    Residuals:
        Min      1Q  Median      3Q     Max 
    -77.428 -22.662   1.533  28.481  66.664 
    
    Coefficients:
                                             Estimate Std. Error t value Pr(>|t|)
    (Intercept)                              -870.372    973.691  -0.894    0.378
    Sexo                                     1431.390   1085.036   1.319    0.196
    Educación                                  79.956     67.435   1.186    0.244
    Experiencia                               150.371    276.760   0.543    0.590
    Años.Compañía                             387.985    321.942   1.205    0.236
    Sexo:Educación                            -91.100     72.858  -1.250    0.220
    Sexo:Experiencia                         -201.251    304.017  -0.662    0.512
    Educación:Experiencia                     -10.730     18.383  -0.584    0.563
    Sexo:Años.Compañía                       -506.868    354.052  -1.432    0.161
    Educación:Años.Compañía                   -25.834     22.940  -1.126    0.268
    Experiencia:Años.Compañía                 -69.004     84.497  -0.817    0.420
    Sexo:Educación:Experiencia                 13.726     19.838   0.692    0.494
    Sexo:Educación:Años.Compañía               32.295     24.453   1.321    0.195
    Sexo:Experiencia:Años.Compañía             96.613     93.681   1.031    0.310
    Educación:Experiencia:Años.Compañía         4.797      5.849   0.820    0.418
    Sexo:Educación:Experiencia:Años.Compañía   -6.341      6.309  -1.005    0.322
    
    Residual standard error: 39.62 on 34 degrees of freedom
    Multiple R-squared:  0.3114,	Adjusted R-squared:  0.007612 
    F-statistic: 1.025 on 15 and 34 DF,  p-value: 0.455




```R

```


<table class="dataframe">
<caption>A anova: 2 × 6</caption>
<thead>
	<tr><th></th><th scope=col>Res.Df</th><th scope=col>RSS</th><th scope=col>Df</th><th scope=col>Sum of Sq</th><th scope=col>F</th><th scope=col>Pr(&gt;F)</th></tr>
	<tr><th></th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>
</thead>
<tbody>
	<tr><th scope=row>1</th><td>46</td><td>73095.01</td><td>NA</td><td>      NA</td><td>      NA</td><td>       NA</td></tr>
	<tr><th scope=row>2</th><td>34</td><td>53371.96</td><td>12</td><td>19723.05</td><td>1.047029</td><td>0.4316432</td></tr>
</tbody>
</table>



