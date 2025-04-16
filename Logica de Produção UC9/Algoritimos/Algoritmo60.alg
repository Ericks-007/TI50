algoritmo "Algoritmo60"
var
   i, n, cont : inteiro
inicio
   escreval("Digite um numero para saber se é primo ou não")
   leia(n)
   
   cont <- 0
   
   para i de 1 ate n faca
        se (n % i = 0) entao
          cont <- cont + 1
        fimse
   fimpara
   se (cont = 2) entao
     escreval(n,"É PRIMO!")
     senao
     escreval(n,"NÃO É PRIMO!")
     fimse
fimalgoritmo
