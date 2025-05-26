algoritmo "Ativ com Parametro"
var
   a, b, soma : inteiro //Variaveis G
   //função com parâmetros locais no cabeçalho
funcao SomaDois(x,y:inteiro): inteiro // X e Y são variaveis locais
 inicio
   retorne x + y;
funcao SubDois(x,y:inteiro): inteiro
 inicio
   retorne x - y;
funcao MultDois(x,y:inteiro): inteiro
 inicio
   retorne x * y;
funcao DDois(x,y:real): real
 inicio
   retorne x / y;
 fimfuncao
inicio
  escreval("Soma de Dois Números Inteiros - usando função")
  escreval("Digite o 1° numero inteiro:")
  leia(a)
  escreval("Digite o 2° numero inteiro:")
  leia(b)
  escreval(a," +",b," =",SomaDois(a,b))
  escreval(a," -",b," =",SubDois(a,b))
  escreval(a," *",b," =",MultDois(a,b))
  escreval(a," /",b," =",DDois(a,b))
fimalgoritmo
