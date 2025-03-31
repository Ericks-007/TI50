algoritmo "Algoritmo21"

var
   h, peso : real
   sexo : inteiro
inicio
   escreval("veja seu peso ideal")
   escreval("qual sua altura")
   leia(h)
   escreval("Digite 0 - Masculino | 1 - Feminino")
   leia(sexo)
   se (sexo = 0) entao
   peso <- (72.7 * h) - 58
   senao
   peso <- (62.1 * h) - 44.7
   fimse
   escreval("Seu Peso ideal é:",peso:6:2)

fimalgoritmo
