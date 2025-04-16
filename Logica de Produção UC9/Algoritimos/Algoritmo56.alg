algoritmo "Algoritmo56"

var
   i, n, fat : inteiro
inicio
   escreval("Fotorial de um numero inteiro positivo")
   escreval("Digite um numero inteiro positivo")
   leia(n)
   fat <- 1
   para i de 1 ate n faca
     fat <- fat * i
   fimpara
   escreval(n,"! = ",fat)
fimalgoritmo
