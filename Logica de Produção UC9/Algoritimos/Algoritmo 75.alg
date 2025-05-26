algoritmo "Algoritmo 75"
var
   v: vetor[1..12] de inteiro
   i : inteiro
inicio
   escreval("Vetor de 12 numeros inteiros PAR ou IMPAR")
   escreval("Carregando o vetor...")
   para i de 1 ate 12 faca
     escreval("Digite v[",i,"]: ")
     leia(v[i])
   fimpara
    limpatela

    escreval("Vetor de 12 inteiros - Classifica��o - par ou �mpar?")
    para i de 1 ate 12 faca
      se (v[i] % 2 = 0) entao
        escreval(v[i]," - � PAR!")
       senao
        escreval(v[i]," - � IMPAR!")
      fimse
    fimpara
fimalgoritmo
