algoritmo "Algoritmo98"
var
   a, b : inteiro
   //Procedimento com passagem de  parâmetros
   procedimento SomaDois(x,y:inteiro)
   var
      soma : inteiro
   inicio
     soma <- x + y
     escreval(x," +",y," =", soma)
   fimprocedimento
inicio
   escreval("Soma de Dois Números - Procedimentos")
   escreval("Digite o 1° numero inteiro:")
  leia(a)
  escreval("Digite o 2° numero inteiro:")
  leia(b)
  SomaDois(a,b)
  
fimalgoritmo
