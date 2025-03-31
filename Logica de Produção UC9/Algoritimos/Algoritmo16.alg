algoritmo "Algoritmo16"


var
   v ,c, cic, vin, dez, cin, doi : inteiro
inicio
   escreval("Efetuar o Saque")
   escreval("Digite a quantidade que deseja sacar")
   leia(v)
   
   c <- v div 100
   cic <- (v % 100) div 50
   vin <- ((v % 100) % 50) div 20
   dez <- (((v % 100) % 50) % 20) div 10
   cin <- ((((v % 100) % 50) % 20) % 10) div 5
   doi <- (((((v % 100) % 50) % 20) % 10) % 5) div 2
   
   escreval(v," valor digitado, equivale a:")
   escreval(c," notas de cem,")
   escreval(cic," notas de ciquenta,")
   escreval(vin," notas de vinte,")
   escreval(dez," notas de dez,")
   escreval(cin," notas de cinco,")
   escreval(doi," notas de dois.")
fimalgoritmo
