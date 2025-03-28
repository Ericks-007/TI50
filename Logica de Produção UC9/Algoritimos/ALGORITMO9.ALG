Algoritmo "Algoritmo9"

Var
   p, m, g, gg, total : real
Inicio
   //Entrada
   escreval("Pedido de camisetas P, M, G, GG")
   escreval("P - R$20 | M - R$22 | G - R$25 | GG - R$ 28")
   escreval("Digite a quantidade de camisetas P")
   leia(p)
   escreval("Digite a quantidade de camisetas M")
   leia(m)
   escreval("Digite a quantidade de camisetas G")
   leia(g)
   escreval("Digite a quantidade de camisetas GG")
   leia(gg)
   //Processamento
   total <- (20 * p + 22 * m + 25 * g + 28 * gg)
   //Saida
   escreval("O valor total: R$",total)
Fimalgoritmo