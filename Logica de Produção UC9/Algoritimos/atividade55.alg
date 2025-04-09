algoritmo "atividade55"
var
   i, n : inteiro
   s : real
inicio
   escreval("Somas de n frações : S = 1 + 1/2 + 1/3 + ... + 1/n")
   escreval("Digite o n° de fracções")
   leia(n)
   s <- 0
   para i de 1 ate n faca
     s <- s+ 1/i
     fimpara
     escreval("A soma de ",n," frações, vale: ",s:2:4)
fimalgoritmo
