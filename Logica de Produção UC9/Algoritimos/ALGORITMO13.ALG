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
   escreva("Serão nescessarios",engra," engradados e")
   escreval(" sobrarão",sobra," garrafas sem embalar!")
Fimalgoritmo