# Referències ràpides per a l'R
## Taules de sintaxis del llenguatge R 
### Elementals
|Comanda|Comentari sobre la comanda|Exemple(_Input_)|(_ouput_)|
|-------|--------------------------|--------------------------|-----------------|
|   `#`   | Serveix per ficar comentaris. | `#This is a code comment` ||
| `*` | Operador producte.| `3*2` |`[1] 6`|
|`sqrt()`|Funció arrel quadrada.| `sqrt(196)`|`[1] 14`|
|`pi`|Quocient de la longitud d'una circumferència entre el doble del seu radi.|`-pi`|`[1] -3.141593`|
|`e`|Com prefixe potencia de deu| `3e2 #Thermopylae number` |`[1] 300`|
|`as.complex()`|a+bi amb a i b reals|`as.complex(-4) #-4 vist com a nombre complex` |`[1] -4+0i`|
|`i`|Unitat Complexa|`3i`|`[1] 0+3i`|
|`""`|Per donar una cadena.|`"En el Nom de Edmon"`|`[1] "En el Nom de Edmon"`|
|`T`| Variable Booleana. Veritat. |`T #TRUE`|`[1] TRUE`|
|`F`|Variable Booleana. Fals.|`F #FALSE`|`[1] FALSE`|
|`NA`|Not available, hi ha alguna dada que falta o que no té sentit en algun lloc.|`NA #NADENA`|`[1] NA`|
|`+`,`-`,`*`,`/`,`^`|Operadors bàsics, en igual odre, suma, resta, producte, quocient, potència. (**Nota:** El vectors o llistes és sumen component a component).|`(1+2-3*4/5^6)`|`[1] 2.999232`|
### Successions
|Comanda|Comentari sobre la comanda|Exemple(_Input_)|(_ouput_)|
|-------|--------------------------|--------------------------|-----------------|
|`rep()` |_Repeat_, serveix per repetir el primer argument _n_ vegades el segon argument |`rep(":)",2) #El doble de content`|`[1] ":)" ":)"`|
|`1:10`|Successions (llista) d'enters|`1:10 #Comptar nombre de suspesos`|` [1]  1  2  3  4  5  6  7  8  9 10`|
|`5:1`|Dóna els valors dels enters de gran a petit.|`5:1`|`[1] 5 4 3 2 1`|
|`seq(,,by=)`|Serveix per fer llistes de nombres més elaborades. Podem pensar que ens dóna fins l'enèsim nombre d'una successió. De `-pi` fins a `pi` de `0.5` en `0.5`.|`seq(-pi,pi,by=.5)`| `[1] -3.1415927 -2.6415927 -2.1415927 -1.6415927 -1.1415927 -0.6415927 [7] -0.1415927  0.3584073  0.8584073  1.3584073  1.8584073  2.3584073 [13]  2.8584073`|
|`seq(,,lenght=)`|També podem ficar  l' _especificador_ `lenght=` per demanar 10 valors equiespaiats entre dos nombres de la recta real.|`seq(-pi,pi,length=10),`|`seq(-pi,pi,length=10)`| `[1] -3.1415927 -2.4434610 -1.7453293 -1.0471976 -0.3490659  0.3490659 [7]  1.0471976  1.7453293  2.4434610  3.1415927`|
|`seq(,by=, lenght=)`|Podem combinar les dues opcions per a fer una llista de `lenght` valors de `by` en `by` a partir d'un valor donat, en aquest cas `1`.|`seq(1,by=.05,length=10)`|`[1] 1.00 1.05 1.10 1.15 1.20 1.25 1.30 1.35 1.40 1.45`|
|`espera=c("H","O","P","E")`|També podem definir un _array_/llista/vector de _Strings_.|` c("N",espera[2])`|`[1] "N" "O"`|
### _Arrays_

> Recordem la **Regla de reutilització**: si tenim dos vector de diferents mides `a` i `b`. Suposem que el vector més curt és `b`. Aleshores en fer l'operació `a*b`,`a+b`,`a-b`, etc, tenim que les operacions és fan _component a component_ i quan s'acaben les _components_ de `b` aleshores és reciclen en el mateix ordre fins acabar amb totes les components de `a`.

> Exemple:
```R
> a=c(1,2,3,4);b=c(-1,1);
> a*b
[1] -1  2 -3  4
```

|Comanda|Comentari sobre la comanda|Exemple(_Input_)|(_ouput_)|
|-------|--------------------------|--------------------------|-----------------|
|`a <- c(1,0,-1,1)`|Assignar valor vectorial `c(1,0,-1,1)` a la variable `a`. La `c` ve de concatenar. |`a<- c(1,0,-1,1) #Forma de fer ho vella (previus versions R)`||
|`a=c(1,0,-1,1)`|Assignar valor vectorial `c(1,0,-1,1)` a la variable `a`. Sintaxis més nova. Pot no funcionar en _obsolets_. |`a=c(1,0,-1,1)`||
|`c(a,b)`|També serveix per concatenar vectors. Siguin `a=c(1,2)` i `b=c(3,4)`, llavors `c(a,b)` retornara el vector `c(1,2,3,4)`.|`c(c(1,2),c(3,4))`|`[1] 1 2 3 4`|
|`a[2]`|Retorna la segona component del vector `a`. El vector no està indexat per `0`.|`c(1,2)[1] #Suposem c(1,2)=a definit prèviament`|`[1] 1`|
|`c(1,2,4,4)[-3]`|Retorna el vector `c(1,2,4,4)` menys la darrera component,és a dir , imprimeix`[1] 1 2 4 ` . El mateix podríem pensar per `c(1,2,4,4)[-1]` que imprimeix `[1]  2 4 4 ` .|`c(1,2,4,4)[-3]`|`[1] 1 2 4`|
|`c(0,2,4,6,8,10,12,14)[3:4]`|Retorna el fragment (o components) del vector desitjat.|`c(0,2,4,6,8,10,12,14)[3:4] # Imprimira [1] 4 6`|`[1] 4 6`|
|`c(1,2,3,4,5)-1`|Vector menys un nombre, és interpretar com restar/sumar la quantitat a cada una de les components.|`c(1,2,3,4,5)-1`|`[1] 0 1 2 3 4`|
|`c(1,2,3,4,5)*2`|Producte usual de _vector_ per _escalar_.|`c(1,2,3,4,5)*2`|`[1]  2  4  6  8 10`|

### Funcions Matemàtiques
|Comanda|Comentari sobre la comanda|Exemple(_Input_)|(_ouput_)|
|-------|--------------------------|--------------------------|-----------------|
|   `max(a)` i `min(a)`   | Dóna el valor màxim i mínim de totes les components del vector `a` respectivament. Això també és pot veure com la _norma infinit_| `min(c(8,3,7)); max(c(8,3,7));` |`[1] 3 [1] 8`|
| `sum(a)` | Suma totes les components del vector `a`. |`sum(c(8,3,7));` | `[1] 18`|
| `prod(a)`| Dóna el producte de totes les components del vector `a`. |`prod(c(8,3,7));` | `[1] 168`|
| `prod(a)`| Dóna el producte de totes les components del vector `a`. |`prod(c(8,3,7));` | `[1] 168`|
| `choose (n,k)` | _n sobre k_, nombre combinatori, combinacions de agafar `k` elements sense ordre d'un conjunt de `n` elements. |`choose(6,4);` | `[1] 15`|
| `factorial(n)`| Dóna _n factorial_, `$n!$`. |`factorial(4); factorial(5); factorial(6);` |`[1] 24` `[1] 120` `[1] 720`|
| `lfactorial(n)`| Serveix per obtenir directament el logaritme del valor factorial. | `> lfactorial(4); lfactorial(5); lfactorial(6);` |`[1] 3.178054 [1] 4.787492 [1] 6.579251`|
|   `g=function(x_1,x_2,x_3){operacions amb variables}`   | Serveix per definir noves funcions a partir de les anteriors. | `f= function(x){x^2-1};f(2); a=c(1,2,3); f(a); # Aplica funció component a component`|`[1] 3 [1] 0 3 8`|

### Gràfics
|Comentari sobre la comanda|Comanda|Gràfic|
|--------------------------|--------------------------|----|
| Representa els punts al pla que defineixen dos vector amb la mateixa longitud un per els valor de les abscisses `OX` i l'altre per les ordenades `OY`. |`x=c(3,1,5,3);` `y=c(1,3,3,5);` `plot(x,y);`|`#Veure PlotTypeL.png`|
| Representa una línia que uneix els punts al pla (per orde de component) que defineixen dos vector amb la mateixa longitud un per els valor de les abscisses `OX` i l'altre per les ordenades `OY`.|`x=c(3,1,5,3);` `y=c(1,3,3,5); plot(x,y, type="l");`|`#Veure PlotTypeL.png`|
| Per dibuixar fragments de funcions o corbes planes parametritzades. Observem que `col=2` fa referencia a que el color per efectuar el gràfic és el _color 2_ que tal com podem veure fa referencia al color vermell. |`curve(exp(-x^2),from=-3,to=3,col=2)` | `#Veure CurveBellGaus.png`|
| Per introduir llegenda als gràfics de fragments de funcions o corbes planes parametritzades. |`curve(exp(-x^2),from=-3,to=3,col=2);` `legend(’topright’,’exp(-x^2)’,lty=1,col=2);`   | `#Veure *LegendBellGauss.png`|
|Per afegir la recta horitzontal i vertical que passa pel zero respectivament.|`curve(exp(-x^2),from=-3,to=3,col=2);abline(h=0); abline(v=0);`|`# Veure CurveLines*`| 
|Podem prescindir de `for=`i `to=` i simplement ficar els dos valors per el paràmetre després de la funció `sin(x)`. `main=dibuix` permet ficar un títol al gràfic |`curve(sin(x),-pi,pi, main="dibuix")`|`#Veure CosSin01.png`|
|El _argument_ `add=T` (T de True i F de False) permet ficar diversos gràfics junts. `lty=2` fa referencia a _line type_ és ha dir línia tipus 2, que tal com podem veure és una línia discontinua. `col=2` ens indica que el gràfic és dibuixarà amb color vermell.|`...;` `curve(cos(x),add=T,lty=2,col=2);`|`# Veure CosSin02.png`|
|Com abans a `legend(...)`, `'topright'` indica la posició. El vector de _Strings_indicarà el nom de les dos gràfiques sobreposades. `lty=c(1,2)` indica que el primer element de la llegenda és amb línia contínua `lty=1` i el segon amb línia discontinua `lty=2`. El color és `col=1` per negre i `col=2` per al vermell, primera i segona gràfica respectivament.|`...;` `legend('topright',c('sin(x)','cos(x)')` `,lty=c(1,2),col=c(1,2));`| `#Veure CosSin03.png`|
| Amb `abline(h=0,v=0);` afegim les rectes horitzontals `h` i verticals `v` que passen per zero `=0` al gràfic. També podem pensar que això és el mateix que ficar els eixos `OX`i `OY`.|`...;` `abline(h=0,v=0);`|`#Veure CosSin04.png`|
|Amb `point(...)` podem dibuixar punt. `-1:1` fa referencia a la regió del eix d'abscisses  que agafem per dibuixar punt, amb punts equidistants. El vector `c(0,1,0.5)` indica el nombre de punts i els valors de les ordenades.   `col=c(3,4,5)` indica els color ; `col=3` verd,`col=4`blau, `col=5` cian.`pch=` fa referencia a la forma dels punts. Potser passa el mateix que amb els colors `col=23` és el mateix que `col=7`, cicle `23-8*2=7`.|`...;`  `points(-1:1,c(0,1,0.5)` `,pch=c(18,20,22), col=c(3,4,5));`|`#Veure CosSin05.png`|
|Podem afegir més d'una gràfica en una finestra amb ` par(mfrow=c(NumFiles,NumColum))`, en aquest cas dues files i una columna `par(mfrow=c(2,1))`. |`par(mfrow=c(2,1);` `curve(sin(x),-pi,pi,lty=3,col=3);` `curve(cos(x),lty=2,col=2);`| `#Veure TwoPicturesInOne01` `TwoPicturesInOne02`|
|Podem definir el punt equiespaiats de 0 a $2\pi$ amb distància `0.1` al eix `OX`. Amb cercles o bé amb línies  `type="l"`obtenint el mateix resultat (o bé augmentant la precisió establerta per defecte). També podriem fer servir la funció `lines(...)` |`x=seq(0,2*pi,by=0.1);` `plot(x,sin(x));` `plot(x,sin(x), type="l");` |`#Veure PlotWithSeq.png`|


#### `x=c(3,1,5,3); y=c(1,3,3,5); plot(x,y);`
![ImagesOfPP1/PlotTypeDefault_resized_60.png](ImagesOfPP1/PlotTypeDefault_resized_60.png)

#### `x=c(3,1,5,3); y=c(1,3,3,5); plot(x,y, type="l");`
![`plot(x,y, type="l")`](ImagesOfPP1/PlotTypeL_resized_60.png)

#### `curve(exp(-x^2),from=-3,to=3,col=2)`
![`plot(x,y)`](ImagesOfPP1/CurveBellGauss_resized_60.png)

#### `curve(exp(-x^2),from=-3,to=3,col=2);` `legend(’topright’,’exp(-x^2)’,lty=1,col=2);`
![`plot(x,y)`](ImagesOfPP1/CurveLegendBellGauss_resized_60.png)

#### `curve(sin(x),-pi,pi, main="dibuix"); curve(cos(x),add=T,lty=2,col=2) ;legend('topright',c('sin(x)','cos(x)'),lty=c(1,2),col=c(1,2)); abline(h=0,v=0); points(-1:1,c(0,1,0.5),pch=c(18,20,22), col=c(3,4,5));`

> **curve(sin(x),-pi,pi, main="dibuix");**
![](ImagesOfPP1/CosSin01_resized_60.png)

> **curve(cos(x),add=T,lty=2,col=2);**
![](ImagesOfPP1/CosSin02_resized_60.png)

> **legend('topright',c('sin(x)','cos(x)'),lty=c(1,2),col=c(1,2));**
![](ImagesOfPP1/CosSin03_resized_60.png)

> **abline(h=0,v=0);**
![](ImagesOfPP1/CosSin04_resized_60.png)

> **points(-1:1,c(0,1,0.5),pch=c(18,20,22), col=c(3,4,5));**
![](ImagesOfPP1/CosSin05_resized_60.png)

#### `par(mfrow=c(2,1);` `curve(sin(x),-pi,pi,lty=3,col=3);` `curve(cos(x),lty=2,col=2);`
![](ImagesOfPP1/TwoPicturesInOne01_resized_60.png)
![](ImagesOfPP1/TwoPicturesInOne02_resized_60.png)

#### `x=seq(0,2*pi,by=0.1);` `plot(x,sin(x));` `plot(x,sin(x), type="l");`
![](ImagesOfPP1/PlotWithSeq_resized_60.png)



**Potser rellevant dividir la taula en taules més petites per temàtica.**
## Exemples
### Exemple alçades
Tenim dades de les alçades (en metres) i masses (en grams) de un grup de 6 persones. I en volem calcular L'**índex de massa corporal** o *IMC*, que recordem que es defineix com _el pes_ (no com a força, amb Kg) dividit entre l'alçada (en metres) al quadrat. _Picant codi_:
```R
# Obvservem que les operacions amb vectors es fan component a component
pes=c(60,72,57,90,95,72)
alcada=c(1.75,1.80,1.65,1.90,1.74,1.91)
IMC=pes/(alcada^2)
IMC
```
``` Terminal
[1] 19.59184 22.22222 20.93664 24.93075 31.37799 19.73630
```

## Exercicis
### Exercici 1
Amb els vectors `a=c(2,1,4,7)` i `b=c(4,0,-1,7)`, calculeu `c=2*a+5*b` i `d=a*b`,on aquesta darrera expressió vol dir el _producte component a component_ (producte escalar de vectors).

**Solució:**
```R
> a=c(2,1,4,7); b=c(4,0,-1,7); c=2*a+5*b; d=a*b; c; d;
[1] 24  2  3 49
[1]  8  0 -4 49
```
### Exercici 2
Escriviu una funció de `m` i `n` que calculi les variacions `Var(m, n)`. Calculeu `Var(365, 10)`. Recordem que:
```TEX
$$
Var(m,n)=frac{m!}{(m-n)!}
$$
```
**Solució:**
Si fem servir directament l'expressió obtenim l'error `Warning message:
In factorial(345) : value out of range in 'gammafn'`. Però també podem escriure `$Var(m,n)={m}\choose{n} \cdot n!$`.
```R
> Var=function(m,n){choose(m,n)*factorial(n)}; Var(365,10);
[1] 3.70608e+25
```
```

