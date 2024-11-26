### VARIABLES ###
JC = javac
JCFLAGS = -encoding UTF-8 -implicit:none

JVM = java
JVMFLAGS = 

### REGLES ESSENTIELLES ###

Main.class : Main.java PageAccueil.class
	${JC} ${JCFLAGS} Main.java

Option.class : Option.java
	${JC} ${JCFLAGS} Option.java

PageOption.class : PageOption.java Option.class Fenetre.class Attention.class
	${JC} ${JCFLAGS} PageOption.java

Accueil.class : Accueil.java
	${JC} ${JCFLAGS} Accueil.java

PageAccueil.class : PageAccueil.java Accueil.class ReturnAndContinue.class PageOption.class
	${JC} ${JCFLAGS} PageAccueil.java

TableauVisible.class : TableauVisible.java Mine.class
	${JC} ${JCFLAGS} TableauVisible.java

TableauCache.class : TableauCache.java
	${JC} ${JCFLAGS} TableauCache.java

Mine.class : Mine.java
	${JC} ${JCFLAGS} Mine.java

GrilleVisible.class : GrilleVisible.java TableauCache.class
	${JC} ${JCFLAGS} GrilleVisible.java

GrilleCache.class : GrilleCache.java TableauCache.class TableauVisible.class SymboleMineVisible.class SymboleVisible.class
	${JC} ${JCFLAGS} GrilleCache.java

Compteur.class : Compteur.java
	${JC} ${JCFLAGS} Compteur.java

SaveAndQuit.class : SaveAndQuit.java
	${JC} ${JCFLAGS} SaveAndQuit.java

Fenetre.class : Fenetre.java Compteur.class SaveAndQuit.class GrilleCache.class GrilleVisible.class Find.class Finv.class Maths.class
	${JC} ${JCFLAGS} Fenetre.java

ReturnAndContinue.class : ReturnAndContinue.java Fenetre.class
	${JC} ${JCFLAGS} ReturnAndContinue.java

SymboleVisible.class : SymboleVisible.java
	${JC} ${JCFLAGS} SymboleVisible.java

SymboleMineVisible.class : SymboleMineVisible.java
	${JC} ${JCFLAGS} SymboleMineVisible.java

Find.class : Find.java
	${JC} ${JCFLAGS} Find.java

Finv.class : Finv.java
	${JC} ${JCFLAGS} Finv.java

Maths.class : Maths.java
	${JC} ${JCFLAGS} Maths.java

Attention.class : Attention.java
	${JC} ${JCFLAGS} Attention.java
### FIN ###
