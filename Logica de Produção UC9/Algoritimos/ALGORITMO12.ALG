Algoritmo "Algoritmo12"

Var
   anos, meses, dias, td : inteiro
Inicio
   //Entradas
   escreval("Coloque sua idade em anos, meses e dias para ser mostrada em dias")
   escreval("Coloque quantos anos voce tem")
   leia(anos)
   escreval("Coloque quantos meses voce tem")
   leia(meses)
   escreval("Coloque quantos dias voce tem")
   leia(dias)
   //Processamento
   td <- anos * 365 + meses * 30 + dias
   //Saidas
   escreval("O total de dias que você tem é: ", td," dias")
Fimalgoritmo