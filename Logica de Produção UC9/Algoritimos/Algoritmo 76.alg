algoritmo "Algoritmo 76"
var
   v: vetor[1..10] de inteiro
   i : inteiro
inicio
   escreval("Vetor de 10 numeros inteiros PAR")
   escreval("Carregando o vetor...")
   para i de 1 ate 10 faca
     escreval("Digite v[",i,"]: ")
     leia(v[i])
   fimpara
    limpatela
    
    escreval("Vetor v, de elementos, na tela:")
     para i de 1 ate 10 faca
        escreva(v[i]," ")
    fimpara
    
    escreval
    escreval("Vetor de 10 inteiros - Classificação - par?")
    para i de 1 ate 10 faca
      se (v[i] % 2 = 0) entao
        escreval(v[i]," - é PAR!")
      fimse
    fimpara
    


fimalgoritmo
