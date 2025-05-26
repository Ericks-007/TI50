algoritmo "Algoritmo68"

var
   num, i, dentro, fora : inteiro
inicio
  dentro <- 0
  fora <- 0
  para i de 1 ate 10 faca
  escreval("Coloque 10 numeros inteiros aleatorios n",i,"°")
  leia(num)
  
  se (num >= 10) e ( num <= 20) entao
  dentro <- dentro + 1
  senao
  fora <- fora + 1
  fimse
  fimpara
  limpatela
  
  escreval("Os numeros dentro de [10,20] Foram: ", dentro)
  escreval("OS numeros fora foi: ", fora)
fimalgoritmo
