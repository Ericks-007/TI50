algoritmo "Algoritmo63"
var
  i, n1, n2, soma, mult : inteiro
inicio
    escreval("some e multiplique o intervalo de 2 numeros intieros e positvos")
    escreval("Digite o primero numero")
    leia(n1)
    escreval("Digite o segundo numero sendo maior que o anterior")
    leia(n2)
    
    
   mult <- 1
   soma <- 0
   
   escreval("Numeros pares entre ",n1," e ",n2,":")
   para i de n1 ate n2 faca
         se (i % 2 = 0) entao
               escreva(i)
                 soma <- soma + i
            senao // i é impar
               mult <- mult * i
         fimse
   fimpara
     escreval("Soma dos pares do intervalo: ",soma)
     escreval("Profuto dos ímpares do intervalo: ",mult)
fimalgoritmo
