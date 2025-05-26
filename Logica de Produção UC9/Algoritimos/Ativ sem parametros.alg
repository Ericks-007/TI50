algoritmo "Ativ sem parametros"
var
   r_soma, r_mult, r_sub: inteiro
   r_d : real
   //função sem passagem parâmetros
funcao SomaDois(): inteiro
 var
 x, y, soma: inteiro
 inicio
  escreval("Soma de Dois Números Inteiros")
  escreval("Digite o 1° numero inteiro:")
  leia(x)
  escreval("Digite o 2° numero inteiro:")
  leia(y)
  limpatela
  soma <- x + y
  retorne soma
  funcao SubDois() : inteiro
  var
  a, b, Sub: inteiro
  inicio
  escreval("Subtração de Dois Números Inteiros")
  escreval("Digite o 1° numero inteiro:")
  leia(a)
  escreval("Digite o 2° numero inteiro:")
  leia(b)
  limpatela
  sub <- a - b;
  retorne Sub
  funcao MultDois() : inteiro
  var
  n, m, Mult: inteiro
  inicio
  escreval("Subtração de Dois Números Inteiros")
  escreval("Digite o 1° numero inteiro:")
  leia(n)
  escreval("Digite o 2° numero inteiro:")
  leia(m)
  limpatela
  Mult <- n * m;
  retorne Mult
  funcao DDois() : real
  var
  p, c, D: real
  inicio
  escreval("Subtração de Dois Números Inteiros")
  escreval("Digite o 1° numero inteiro:")
  leia(p)
  escreval("Digite o 2° numero inteiro:")
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
  escreval("A subtração dos dois numeros vale: ",r_sub)
  escreval("A Multiplicação dos dois numeros vale: ",r_mult)
  escreval("A Divisão dos dois numeros vale: ",r_d)
fimalgoritmo
