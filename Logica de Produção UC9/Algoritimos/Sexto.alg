algoritmo "aaaaaa"
var
  s: vetor[1..10] de real
  i: inteiro
  media, soma :real
inicio
soma<-0
media<-0
  para i de 1 ate 10 faca
    escreval("Digite o valores")
    leia(s[i])
  fimpara
  limpatela
  para i de 1 ate 10 faca
escreva(s[i])
fimpara
escreval
  para i de 1 ate 10 faca
soma<-s[i]+ soma
media<-soma/10

  fimpara
escreval("Media", media)
escreval("soma", soma)
fimalgoritmo
