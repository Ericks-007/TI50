algoritmo "Algoritmo28"

var
   num, c, d, u, soma: inteiro
inicio
   escreva("Digite um número de 3 digitos - soma de seus algoritmos entre 100 e 999: ")
    leia(num)
    
    se (num >= 100) e (num <=999) entao
    c <- num div 100
    d <- (num % 100) div 10
    u <- (num % 100) % 10
    
       senao
        escreval("Numero Invalido")
    fimse
     soma <- c+ d + u
     escreval("soma dos digitos de ",num,":",soma)
    
fimalgoritmo
