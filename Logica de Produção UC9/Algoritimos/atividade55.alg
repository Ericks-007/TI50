algoritmo "atividade55"
var
   i, n : inteiro
   s : real
inicio
   escreval("Somas de n fra��es : S = 1 + 1/2 + 1/3 + ... + 1/n")
   escreval("Digite o n� de frac��es")
   leia(n)
   s <- 0
   para i de 1 ate n faca
     s <- s+ 1/i
     fimpara
     escreval("A soma de ",n," fra��es, vale: ",s:2:4)
fimalgoritmo
