algoritmo "algoritmo18"

var
   nota1, nota2, nota3, nota4, media : real
   nome : literal
inicio
   escreval("M�dia de 4 notas de um aluno")
   escreval("Digite o nome do(a) aluno(a)")
   leia(nome)
   escreval("Digite a 1� nota de ",nome,":")
   leia(nota1)
   escreval("Digite a 2� nota de ",nome,":")
   leia(nota2)
   escreval("Digite a 3� nota de ",nome,":")
   leia(nota3)
   escreval("Digite a 4� nota de ",nome,":")
   leia(nota4)
   media <- (nota1 + nota2 + nota3 + nota4) / 4
   se (media >=6) entao
   escreval(nome," est� APROVADO(A)!", media," com m�dia")
   senao
   escreval(nome," tem m�dia",media," est� REPROVADO(A)!")
   fimse
fimalgoritmo
