algoritmo "Algoritmo67"
var
   num, soma, media, maior, menor: real
   i: inteiro

inicio
   soma <- 0
   escreval("10 Numeros reais - m�dia, maior e menor dos numeros")
   escreval("Digite o 1� n�mero: ")
   leia(num)
   maior <- num
   menor <- num

   para i de 2 ate 10 faca
      soma <- soma + num
      escreval("Digite o ", i, "� n�mero: ")
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
   escreval("A soma dos n�meros digitados �: ", soma)
   escreval("A m�dia dos n�meros digitados �: ", media)
   escreval("A menor dos n�meros digitados �: ", menor)
   escreval("A maior dos n�meros digitados �: ", maior)
fimalgoritmo

