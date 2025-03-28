Algoritmo "Algoritmo8"
Var
   a, b, c, el, d, Ma, Mh : real
Inicio
   //Entrada
   escreval("Média Aritmética e Harmônica de 5 valores")
   escreval("Escreva o valor de A:")
   leia(a)
   escreval("Escreva o valor de B:")
   leia(b)
   escreval("Escreva o valor de C:")
   leia(c)
   escreval("Escreva o valor de D:")
   leia(d)
   escreval("Escreva o valor de E:")
   leia(el)
   //Processamento
   Ma <- (a + b + c + d + el) / 5
   Mh <- 5 / ((1/a) + (1/b) + (1/c) + (1/d) + (1/el))
   //Saida
   escreval("O valor da Media Aritmética:",Ma: 6:2)
   escreval("O valor da Media Harmônica:",Mh: 6:2)
Fimalgoritmo