algoritmo "Algoritmo 78"
var
   v: vetor[1..10] de real
   vq: vetor[1..10] de real
   i : inteiro
inicio

   escreval("Vetor de 10 elementos inteiros")
     para i de 1 ate 10 faca
      escreval ("Digite v[",i,"]: ")
      leia (v[i])
      vq[i] <- (v[i] * v[i])
     fimpara
    limpatela
    
    escreval("Vetor v, de elementos, na tela:")
     para i de 1 ate 10 faca
        escreva(v[i]," ")
     fimpara
    escreval
    
    escreval("Vetor v, ao quadrado:")
     para i de 1 ate 10 faca
        escreva(vq[i]," ")
     fimpara
fimalgoritmo
