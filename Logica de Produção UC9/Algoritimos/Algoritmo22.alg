algoritmo "algoritmo22"

var
   nota1, nota2, nota3, MP : real
inicio
   escreval("Saiba se foi aprovado ou reprovado")
   escreval("Digite a nota da 1ª prova")
   leia(nota1)
   escreval("Digite a nota da 2ª prova")
   leia(nota2)
   escreval("Digite a nota da 3ª prova")
   leia(nota3)
   MP <- ((nota1*1)+(nota2*1)+(nota3*2)) / 4
   se (MP>=6.0) entao
   escreval("APROVADO nota:",MP)
   senao
   escreval("REPROVADO nota:",MP)
   fimse
fimalgoritmo
