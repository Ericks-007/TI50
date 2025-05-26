algoritmo "Ativ Proc sem parâmetros"
var
//Procedimento (não retorna valor) sem passagem de parâmetros
   procedimento soma()
   var
      a, b, s : inteiro
   inicio
      escreval("Digite o 1º número inteiro:")
      leia(a)
      escreval("Digite o 2º número inteiro:")
      leia(b)
      s <- a + b
      escreval(a," + ",b," = ",s)
   procedimento sub()
   fimprocedimento
inicio
   soma()
fimalgoritmo
