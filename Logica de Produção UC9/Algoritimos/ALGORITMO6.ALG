Algoritmo "Algoritmo6"

Var
   a, b, c, p, area : real
Inicio
   //Entradas
   escreval("�rea de um Triangulo - Formula de Her�o")
   escreval("Digite o valor do 1� lado:")
   leia(a)
   escreval("Digite o valor do 2� lado:")
   leia(b)
   escreval("Digite o valor do 3� lado:")
   leia(c)
   //Processamento
   p <- (a + b + c) / 2
   area <- RaizQ(p * (p-a) * (p-b) * (p-c) )
   //Saida
   escreval("A �rea do triangulo, vale: ",area: 6:2)
Fimalgoritmo