algoritmo "Algoritmo59"

var
   i, num : inteiro
inicio
   escreval("Digite um numero para mostrar todos os divisores")
   leia(num)
   
   para i de 1 ate num faca
   se (num % i = 0) entao
   escreval(num," %",i," = 0")
   fimse
   fimpara
fimalgoritmo
