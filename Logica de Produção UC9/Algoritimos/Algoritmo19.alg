algoritmo "Algoritmo19"

var
   salario_inicial, reajuste, N_Salario : real
   nome :
inicio
   escreval("informe o salario")
   leia(salario_inicial)
   se (salario_inicial <= 2500) entao
   reajuste <- 0.30 * salario_inicial
   senao
   reajuste <- 0.20 * salario_inicial
   fimse
   N_salario <- salario_inicial + reajuste)
   escreval("Salario inicial:",salario_inicial:6:2," R$")
   escreval("O reajuste foi no valor de",reajuste:6:2," R$")
   escreval("O seu salario novo será",N_salario:6:2," R$")
fimalgoritmo
