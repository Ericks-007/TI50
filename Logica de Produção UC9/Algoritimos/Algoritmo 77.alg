algoritmo "Algoritmo 77"

var
   A: vetor [1..6] de inteiro
   aoma, i: inteiro
inicio
   escreval("atribua os valores ao vetor")
   A[1] <- 1
   A[2] <- 0
   A[3] <- 5
   A[4] <- -2
   A[5] <- -5
   A[6] <- 7
   soma <- A[1] + A[2] + A[5]
   A[4] <- 100
   
   para i de 1 ate 6 faca
    escreva(A[i]," ")
   fimpara
   escreval
    escreval("")
fimalgoritmo
