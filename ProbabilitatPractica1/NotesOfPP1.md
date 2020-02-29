# Referències ràpides per a l'R

|Comanda|Comentari sobre la comanda|Exemple                   |
|-------|--------------------------|--------------------------|
|   `#`   | Serveix per ficar comentaris. | `#This is a code comment` |
| `*` | Operador producte.| `3*2` |
|`sqrt()`|Funció arrel quadrada| `sqrt(196)`|
|`pi`|Quocient de la longitud d'una circumferència entre el doble del seu radi.|`-pi`|
|`e`|Com prefixe potencia de deu| `3e2 #Thermopylae number` |
|`as.complex()`|a+bi amb a i b reals|`as.comple(-4) #-4 vist com a nombre complex` |
|`i`|Unitat Complexa|`3i`|
|`""`|Per donar una cadena|`"En el Nom de Edmon"`|
|`T`| Variable Booleana. Veritat. |`T #TRUE`|
|`F`|Variable Booleana. Fals.|`F #FALSE`|
|`NA`|Not available, hi ha alguna dada que falta o que no té sentit en algun lloc|`Na #NADENA`|
|`a <- c(1,0,-1,1)`|Assignar valor vectorial `(1,0,-1,1)` a la variable `a`. La `c` ve de concatenar |`a<- c(1,0,-1,1)` #Forma de fer ho vella (previus versions R)|
|`a=(1,0,-1,1)`|Assignar valor vectorial `(1,0,-1,1)` a la variable `a`. Sintaxis més nova. Pot no funcionar en _obsolets_ |`a=(1,0,-1,1)`|
|`c(a,b)`|També serveix per concatenar vectors. Siguin `a=(1,2)` i `b=(3,4)`, llavors `c(a,b)` retornara el vector `(1,2,3,4)`|`c((1,2),(3,4))`|
|`a[2]`|Retorna la segona component del vector `a`. El vector no està indexat per `0`|`c(1,2)[1] #Suposem c(1,2)=a definit prèviament`|
|`c(1,2,4,4)[-3]`|Retorna el vector `c(1,2,4,4)` menys la darrera component,és a dir , imprimeix`[1] 1 2 4 ` . El mateix podríem pensar per `c(1,2,4,4)[-1]` que imprimeix `[1]  2 4 4 ` |`c(1,2,4,4)[-3]`|
|`c(0,2,4,6,8,10,12,14)[3:4]`|Retorna el fragment (o components) del vector desitjat|`c(0,2,4,6,8,10,12,14)[3:4] # Imprimira [1] 4 6`|

