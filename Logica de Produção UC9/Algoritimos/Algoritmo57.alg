algoritmo "Algoritmo57"

var
   lim_inf, lim_sup, i, soma, aux : inteiro
inicio
   escreval("Somador de numeros pares entre intervalos dados pelo usuario")
   escreval("Digite um numero inferior")
   leia(lim_inf)
   escreval("Digite um numero superior")
   leia(lim_sup)

   soma <- 0

   se (lim_inf > lim_sup) entao
   aux <- lim_inf
   lim_inf <- lim_sup
   lim_sup <- aux
   fimse
   escreval("Numeros pares entre ",lim_inf," e ",lim_sup,":")
   
   para i de lim_inf ate lim_sup faca
         se (i % 2 = 0) entao
               escreval(i)
                 soma <- soma + i
         fimse
   fimpara

   escreval("Soma dos pares entre ",lim_inf," e ",lim_sup,":", soma)
fimalgoritmo
