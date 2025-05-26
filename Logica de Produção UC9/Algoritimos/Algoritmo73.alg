Algoritmo "Algoritmo73"
Var
   i, j, num, cont_divi, qtd_primos: inteiro
Inicio
   qtd_primos <- 0

   para i de 1 ate 10 faca
      escreva("Digite o ", i, "o numero: ")
      leia(num)

      cont_divi <- 0

      para j de 1 ate num faca
         Se (num % j = 0) entao
            cont_divi <- cont_divi + 1
         Fimse
      fimpara

      Se (cont_divi = 2) entao
         escreval(num, " e primo!")
         qtd_primos <- qtd_primos + 1
      fimse
   fimpara

   Escreval("Existem ", qtd_primos, " numeros primos.")
Fimalgoritmo
