algoritmo "Algoritmo24"

var
   A, B, C, P, Area : real
inicio
   escreval("Verificador de dados de triangulo")
   escreval("Digite o Valor A:")
   leia(A)
   escreval("Digite o Valor B:")
   leia(B)
   escreval("Digite o Valor C:")
   leia(C)

   se (A < B+C) e (B < A+C) e (C < A+B) entao
      escreval(A,", ",B," e ",c," formam um triangulo")
   P <- (A + B + C) / 2
   area <- RaizQ(p *(p-A)*(p-B)*(p-C))
      escreval("A area do triangulo vale: ",area:5:2)
   senao
   escreval("Não é um triangulo")
   fimse
   
   

fimalgoritmo
