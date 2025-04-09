algoritmo "atividade52"

var
   media, soma, soma_q, soma_c, soma_met : real
   i : inteiro
inicio
   soma <- 0
   soma_q <- 0
   soma_c <- 0
   soma_met <- 0

   escreval("Numeros Inteiros entre 1 a 100 e alguns calculos relativos a esses numeros")
   para i de 1 ate 100 faca
      escreval(i)
      soma <- soma + i
      soma_q <- soma_q + i^2
      soma_c <- soma_c + i^3
      soma_met <- soma_met + i/2
   fimpara
   media <- soma / 100
   limpatela
   escreval("Soma dos Numeros:",soma)
   escreval("Soma dos Quadrados dos Numeros:",soma_q)
   escreval("Soma dos Cubos dos Numeros:",soma_c)
   escreval("Soma dos Metades dos Numeros:",soma_met)
   escreval("Media dos Numeros:",media)
    
fimalgoritmo
