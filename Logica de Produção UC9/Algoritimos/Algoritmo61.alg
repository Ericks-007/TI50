algoritmo "Algoritmo61"
var
   i, n, soma: inteiro
inicio
   escreval("Saiba se um n� inteiro � perfeito")
   escreval("Digite um numero inteiro positivo")
   leia(n)
   
   soma <- 0
   
   para i de 1 ate n-1 faca
      se (n % i = 0) entao
       soma <- soma + i
      fimse
   fimpara
   se (soma = n) entao
    escreval(n," � PERFEITO")
    senao
    escreval(n," N�O � PERFEITO")
   fimse
fimalgoritmo
