Algoritmo "Algoritmo4"

Var
   raio, altura, area, vol : real
Inicio
   //Entradas
   escreval("Área e VOlume de um Cilindro")
   escreval("Digite o valor do raio do cilindro, em cm:")
   leia(raio)
      escreval("Digite o valor do altura do cilindro, em cm:")
   leia(altura)
   //Processamento
   area <- 2 * pi * raio * (altura + raio)
   vol <- pi * raio^2 * altura
   //Saídas
   escreval("Área do Cilindro: ",area: 6:2,"cm²")
   escreval("Volume do Cilindro: ",vol: 6:2,"cm²")
Fimalgoritmo