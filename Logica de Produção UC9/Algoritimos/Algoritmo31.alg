algoritmo "Algoritmo31"

var
   a, b, c, d, X1, x2 : real
inicio
    escreval("Discriminante (delta) de uma equação de segundo grau")
   escreval("ax² + bx + c = 0")
   escreval("Digite o valor de a:")
   leia(a)
      escreval("Digite o valor de b:")
   leia(b)
      escreval("Digite o valor de c:")
   leia(c)

   d <- b^2 - 4 * a * c
   se (d > 0) entao
   X1 <- -B - (raizq(d))/2 * a
    escreval("A raiz da equação é:",X2,X2)
        se (d = 0) entao
        X1 <- -B + (raizq(d))/2*a
        escreval("A raiz da equação é:",X1)
        senao
   se (d<0) entao
   escreval("Não existe raiz real")
   senao


        fimse
   fimse
   fimse
   

        
fimalgoritmo
