algoritmo "Algoritmo96"
var
   resposta: inteiro
   //função sem passagem parâmetros
funcao SomaDois(): inteiro
 var
 x,y, soma : inteiro
 inicio
  escreval("Soma de Dois Números Inteiros")
  escreval("Digite o 1° numero inteiro:")
  leia(x)
  escreval("Digite o 2° numero inteiro:")
  leia(y)
  soma <- x + y
  retorne soma
 fimfuncao
inicio
  resposta <- SomaDois()
  escreval("A soma dos dois numeros vale: ",resposta)

fimalgoritmo
