algoritmo "Algoritmo15"

var
   t, a, m, s, d : inteiro
inicio
   escreval("conversao de tempo dado em dias para anos, meses, semanas, e dias")
   escreval("Coloque o tando de tempo, em dias:")
   leia(t)
   a <- t div 365
   m <- (t % 365) div 30
   s <- ((t % 365) % 30) div 7
   d <- ((t % 365) % 30) % 7
   escreval(t," dias, equivalem, aproximadamente a:",a," anos,",m," meses,",s," semanas e",d," dias!")
fimalgoritmo
