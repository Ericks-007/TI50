Algoritmo "Algoritmo10"

Var
   H, He, Sb, Sl, I : real
Inicio
   //Entrada
   escreval("Salario Bruto e Liquido de um Funcionario")
   escreval("O tanto de Horas Trablhadas no mês:")
   leia(h)
   escreval("O tanto de Horas Extras no mês:")
   leia(He)
   //Processamento
   Sb <- 30 * h + 40 * He
   I <- 0.125 * Sb
   Sl <- Sb - I
   //Saida
   escreval("Valor do Salario Bruto: R$",Sb)
   escreval("Impostos: R$",I)
   escreval("Valor do Salario liquido: R$",Sl)
   
Fimalgoritmo