algoritmo "Ativ sem parametros"
var
   r_soma, r_mult, r_sub: inteiro
   r_d : real
   //fun��o sem passagem par�metros
funcao SomaDois(): inteiro
 var
 x, y, soma: inteiro
 inicio
  escreval("Soma de Dois N�meros Inteiros")
  escreval("Digite o 1� numero inteiro:")
  leia(x)
  escreval("Digite o 2� numero inteiro:")
  leia(y)
  limpatela
  soma <- x + y
  retorne soma
  funcao SubDois() : inteiro
  var
  a, b, Sub: inteiro
  inicio
  escreval("Subtra��o de Dois N�meros Inteiros")
  escreval("Digite o 1� numero inteiro:")
  leia(a)
  escreval("Digite o 2� numero inteiro:")
  leia(b)
  limpatela
  sub <- a - b;
  retorne Sub
  funcao MultDois() : inteiro
  var
  n, m, Mult: inteiro
  inicio
  escreval("Subtra��o de Dois N�meros Inteiros")
  escreval("Digite o 1� numero inteiro:")
  leia(n)
  escreval("Digite o 2� numero inteiro:")
  leia(m)
  limpatela
  Mult <- n * m;
  retorne Mult
  funcao DDois() : real
  var
  p, c, D: real
  inicio
  escreval("Subtra��o de Dois N�meros Inteiros")
  escreval("Digite o 1� numero inteiro:")
  leia(p)
  escreval("Digite o 2� numero inteiro:")
  leia(c)
  limpatela
  D <- p / c;
  retorne D
 fimfuncao
inicio
  r_soma <- SomaDois()
  r_sub <- subDois()
  r_Mult <- MultDois()
  r_d <- DDois()
  escreval("A soma dos dois numeros vale: ",r_soma)
  escreval("A subtra��o dos dois numeros vale: ",r_sub)
  escreval("A Multiplica��o dos dois numeros vale: ",r_mult)
  escreval("A Divis�o dos dois numeros vale: ",r_d)
fimalgoritmo
