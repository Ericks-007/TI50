Algoritmo "Algoritmo11"

Var
   d, xb, xa, yb, ya : real
Inicio
   //Entrada
   escreval("Distância entre dois pontos A e B, do plano cartesiano")
   escreval("Digite a abcissa do ponto (xA):")
   leia(xa)
   escreval("Digite a abcissa do ponto (yA):")
   leia(ya)
   escreval("Digite a abcissa do ponto (xB):")
   leia(xb)
   escreval("Digite a abcissa do ponto (yB):")
   leia(yb)
   //Processamento
   d <- RaizQ((xb - xa)^2 + (yb - ya)^2)
   //Saida
   escreval("A distância entre A e B vale:", d: 6:2)
Fimalgoritmo