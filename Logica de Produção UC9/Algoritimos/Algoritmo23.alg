algoritmo "algoritmo233"

var
   imc, peso, altura : real
inicio
   escreval("Iremos determinar se seu peso esta ideal")
   escreval("Qual sua Altura")
   leia(altura)
   escreval("Qual seu Peso")
   leia(peso)
   
   imc <- peso/(altura^2)
   
   se(imc<=20) entao
   escreval("IMC = ",imc:3:1," abaixo do peso")
   senao
   se (imc<=25) entao
   escreval("IMC = ",imc:3:1," Peso normal")
   senao
   se (imc<=30) entao
   escreval("IMC = ",imc:3:1," Sobrepeso")
   senao
   se (imc<=40) entao
   escreval("IMC = ",imc:3:1," Obeso")
   senao
   se (imc>40) entao
   escreval("IMC = ",imc:3:1," Obeso Morbido")
   fimse
   fimse
   fimse
   fimse
   fimse
   
fimalgoritmo
