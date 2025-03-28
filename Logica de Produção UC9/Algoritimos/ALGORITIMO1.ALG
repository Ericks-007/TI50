Algoritmo "Algoritimo1"

Var
   tc, tf : real
Inicio
   //Entrada
   escreval("Conversão de temperaturas Farenheit a Celsius")
   escreval("Digite uma temperatura em °F:")
   leia(tf)
   //Processamento
   tc <- 5 * (tf - 32) / 9
   //Saida
   escreval(tf,"°F equivalem a: ",tc:3:1,"°C")
Fimalgoritmo