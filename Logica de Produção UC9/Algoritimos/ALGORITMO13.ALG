Algoritmo "Algoritmo13"

Var
   garrafas, engra, sobra : inteiro
Inicio
   //Entrada
   escreval("Engradados de Cereja - Bar TI50")
   escreval("Digite a quantidade de garrafas que deseja embalar")
   leia(garrafas)
   //Processamento
   engra <- garrafas div 24
   sobra <- garrafas % 24
   //Saida
   escreva("Ser�o nescessarios",engra," engradados e")
   escreval(" sobrar�o",sobra," garrafas sem embalar!")
Fimalgoritmo