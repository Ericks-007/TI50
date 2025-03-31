algoritmo "algoritmo18"

var
   nota1, nota2, nota3, nota4, media : real
   nome : literal
inicio
   escreval("Média de 4 notas de um aluno")
   escreval("Digite o nome do(a) aluno(a)")
   leia(nome)
   escreval("Digite a 1ª nota de ",nome,":")
   leia(nota1)
   escreval("Digite a 2ª nota de ",nome,":")
   leia(nota2)
   escreval("Digite a 3ª nota de ",nome,":")
   leia(nota3)
   escreval("Digite a 4ª nota de ",nome,":")
   leia(nota4)
   media <- (nota1 + nota2 + nota3 + nota4) / 4
   se (media >=6) entao
   escreval(nome," está APROVADO(A)!", media," com média")
   senao
   escreval(nome," tem média",media," está REPROVADO(A)!")
   fimse
fimalgoritmo
