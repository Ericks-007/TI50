Algoritmo "Algoritmo3"

Var
   area_base, altura, vol : real
Inicio
   //Entradas
   escreval("Calculo de volume de uma piramede")
   escreval("Digite o valor da area da base, em m²:")
   leia(area_base)
   escreval("Digite o valor da altura, em m: ")
   leia(altura)
   //Processamento
   vol <- (1/3) * area_base * altura
   //Saida
   escreval("Valor da volume da piramede: ",vol," m³")
Fimalgoritmo