algoritmo "Algoritmo58"
var
   i, num : inteiro
inicio
   escreval("Numeros multiplos 3 e 5 num intervalo entre 1 e um numero")
   escreval("Digite um numero inteiro")
   leia(num)
   limpatela
   escreval("Numeros multiplos de 3 e 5 entre 1 e",num,":")
   para i de 1 ate num faca
   se (i % 3 = 0) e (i % 5 = 0) entao
   escreval(i)
   fimse
   fimpara
fimalgoritmo
