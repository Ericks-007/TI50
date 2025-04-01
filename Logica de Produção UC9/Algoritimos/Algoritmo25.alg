algoritmo "Algoritmo25"

var
   A, B, C, P, area : real
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
      se (A=B) e (B=C) entao
          escreval("Triângulo equilátero")
          senao                                        z
          se (A=B) ou (B=C) ou (A=C) entao
              escreval("Triângulo isósceles")
              senao
                 escreval("Triângulo escaleno")
          fimse
      fimse
   fimse
   P <- (A + B + C) / 2
   area <- RaizQ(p *(p-A)*(p-B)*(p-C))
      escreval("A area do triangulo vale: ",area:5:2)
fimalgoritmo
