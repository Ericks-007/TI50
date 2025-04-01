algoritmo "semnome"

var
   preco, pa : real
inicio
    escreval("Digite o valor de sua compra R$")
   leia(preco)

   se (preco <= 50) entao
       pa <-  0.05 * preco + preco
       senao
            se (preco <= 100) entao
             pa <- 0.1 * preco + preco
                senao
                pa <- 0.15 * preco + preco
             fimse
   fimse
   
   escreva("O valor do produto é:",pa)
   
   se (pa <= 80) entao
   escreval(" É barato")
   senao
         se (pa <= 120) entao
         escreval(" É Normal")
         senao
              se (pa <= 200) entao
              escreval(" É Caro")
              senao
                   se (pa > 200) entao
                   escreval(" É barato")
                   senao
                   fimse
              fimse
         fimse
   fimse

fimalgoritmo
