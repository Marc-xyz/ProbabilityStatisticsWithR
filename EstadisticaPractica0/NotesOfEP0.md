# Referències ràpides per als _Fulls de càlculs_ (_LibreOffice Calc_,_Google Spreadsheets_) 
## Taules de sintaxis del llenguatge

>_Un Llibre pot tenir més d'una pàgina, cada pàgina té celes_.

> Abans d'introduir una fórmula `=`.

|Paraula o concepte |Descripció o exemple|
|-------------------|------------------------------------------------|

=========================================================================

## Comentari Introductori
* Eina a _l'abast de tothom_ per **tractament de dades**.
* Típics: _MS Excel_, _LibreOffice Calc_, _ Apache OpenOffice Calc_, Google Spreadsheets.
* Potser cal activar `Anàlisis de Dades` com en _MS Excel_
* Treballarem amb l'arxiu `edatestatura.ods`
## La Pràctica `linea;` a `linea;`

> Treballarem amb l'arxiu `edatestatura.ods`  El full
dades conté quatre variables d' interès, `sexe`, `edat`, `estatura` i `grup.edat`, més una columna d'identificador del cas (`id`). Les variables `edat` i `estatura` són **numèriques**, amb un nombre elevat de valors diferents; `sexe` i `grup.edat` són **categòriques**, és a dir, classifiquen els individus en un reduït nombre de grups. El full etiquetes explica quin són aquests grups i la nomenclatura utilitzada.

### Funcions
>Comencem preparant les dades del nostre arxiu per al seu _anàlisi_. Per transformar les variables utilitzem les funcions pròpies del full de càlcul. Podem accedir a la llibreria de funcions des de la barra de formules (símbol `fx` ) o escriure el símbol `=` seguit del nom de la funció i els seus paràmetres.

-----

**Exercici 01**
Creeu un nou _full_ anomenat `dades2` amb la mateixa informació que el full `dades`. Substituint `sexe` i `grup.edat` per dues noves, `genere` i `grup`, respectivament, que continguin els valors alfanumèrics (*les etiquetes*) corresponents.
(*Indicació: utilitzeu la funció lògica* `SI` *i tingueu en compte que els valors no numèrics van entre cometes* `"ValorNoNumeric"`.)

**Solució:**
* Descarregar el paquet `libreoffice-l10n-ca` ( o `libreoffice-l10n-es`) des de terminal i reinicialitzar programa. (IF==SI?, no faré la pràctica de nou, )
* Copiar la fulla i reanomenar aquesta copia com `dades2`.
* Obrir el *Auxiliar de funcions* i busquem la funció `SI` a _Lògica_

```Excel
=SI("sexe";"genere")
```
**NO_ACABAT**

----
 
> Si el *output* de l'operació que realitzem és en vàries cel·les, parlem de **funció matricial**. Observeu que si executem una operació d'aquest tipus només s'omple una casella. Per resoldre aquest problema, seleccioneu tot el rang de sortida, escriviu la funció a la barra de fòrmules i apliqueu la combinació de tecles: `Control+Shift+Enter`.

--------

**Exercici 02**
Obriu un nou fitxer amb **LibreOffice Calc**
* Esrciviu en 4 caselles una matriu 2x2  invertible qualsevol i calculeu la seva inversa amb la funció 

**Solució:**
* Ho faig en la fulla `altres` de `estructura_modificat.ods`.
* 
```

```

--------






======================================================================

## Glossari repàs 
|Paraula o concepte |Descripció o exemple|
|-------------------|------------------------------------------------|
|Variable numèrica| Com per exemple la `edat` o `estatura` d'una `persona`.|
|Variable categòriques| Per classificar caràcters qualitatius, p.ex: `sexe`, `grup.edat`|

## Resum de la pèrdua de temps de 2h o més
* Volia copiar les celes de de `dades` a `dades2` sense selecionar-ho manualment, és a dir, crear la nova fulla i ficant en la cela `A1` alguna cosa del estil `=dades!A1:E557` i ja.

* **Solució Rapida Cutre**: Copiar la fulla i reanomenar aquesta copia con `dades2`

* No sé perquè no és pot fer potser en acabar la pràctica ho sé fer.

* Per copiar una única cela per exemple la `A1` serveix `=dades!A1` per *Excel* i *Google Spreadsheets*, per a *LibreOffice* no serveix `!` ha de ser `.`, ha de ser `=dades.A1`.

* Es veu que amb *fulls de càlcul* també es poden fer programes amb el seu codi s'els anomena *macros*, resulta que estan programats en *VBA* que és *Visual Basic for Applications* que es un dialecte del famós *Visual Basic* (a la seva vegada del Basic).

* *LibreOffice* em resulta repulsiu, els fulls de calcul, volen ser fàcils però al final resulta massa difícil per fer una *tasca simple*.

* La majoria de vídeos són d'un nivell molt baix, omplir per omplir. No perdre massa temps si no es troba la solució

* Totes les possibles opcions: 
    1. `Ctrl+C +Ctrl+V`
    2. `---`
    3. `---`
    4.  Amb fórmules (`=`)
    5.  Amb macros (``)
    6.  Construint amb:
        * autocompletar
        * cerca i substituir
