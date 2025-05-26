algoritmo "Algoritmo67"
var
   num, soma, media, maior, menor: real
   i: inteiro

inicio
   soma <- 0
   escreval("10 Numeros reais - média, maior e menor dos numeros")
   escreval("Digite o 1º número: ")
   leia(num)
   maior <- num
   menor <- num

   para i de 2 ate 10 faca
      soma <- soma + num
      escreval("Digite o ", i, "º número: ")
      leia(num)
      se (num > maior) entao
      maior <- num
      se (num < menor) entao
      menor <- num
      fimse
      fimse
   fimpara
   media <- soma / 10
   limpatela
   escreval("A soma dos números digitados é: ", soma)
   escreval("A média dos números digitados é: ", media)
   escreval("A menor dos números digitados é: ", menor)
   escreval("A maior dos números digitados é: ", maior)
fimalgoritmo

