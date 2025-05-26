algoritmo "algoritmo69"

var
   alt, media, menor, maior, media_m, soma, soma_m : real
   i, sexo: inteiro
inicio
   soma <- 0
   soma_m <- 0
   cont_m <- 0
   escreval("Sexo e Altura e 10 pessoas")
   escreval("escreva o altura")
   leia(alt)
   escreval("digite 1 para Masculino ou 2 para Feminino")
   leia(sexo)
      soma <- soma + altura
   se (sexo = 2) entao
    soma_m <- soma_m + altura
    fimse
   para i de 2 ate 10 faca
   escreval("escreva o altura")
   leia(alt)
   escreval("digite 1 para Masculino ou 2 para Feminino")
   leia(sexo)
   
   se (alt > maior) entao
     maior <- alt
   fimse
   se (alt < menor) entao
     menor <- alt
   fimse
         soma <- soma + altura
   se (sexo = 2) entao
    soma_m <- soma_m + altura
    fimse
   fimpara
   media <- soma / 10
   media_m <- soma_m / 10
   limpatela
   
   escreval("Maior altura da turma: ", maior)
   escreval("Menor altura da turma: ", menor)
   escreval("Média de altura da turma: ", media)
   escreval("Média de altura das mulheres turma:",media_m)
fimalgoritmo
