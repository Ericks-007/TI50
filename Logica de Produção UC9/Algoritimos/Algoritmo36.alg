algoritmo "Algoritmo36"

var
   cod, qtde, preco_total : real
inicio
   escreval("Loja de Produtos TI50")
   escreval("Digite a quantidade de produtos que deseja comprar: ")
   leia(qtde)
   escreval("C�digo dos Produtos e Pre�os")
   escreval("----------------------------")
   escreval("1 - R$32,00 ")
   escreval("2 - R$45,00 ")
   escreval("3 - R$37,00 ")
   escreval("4 - R$32,00 ")
   escreval("5 - R$45,00 ")
   escreval("----------------------------")
   escreval("Digite o c�digo do produto que deseja comprar:")
   leia(cod)
   escolha cod
      caso 1
         preco_total <- qtde * 32
      caso 2
         preco_total <- qtde * 45
      caso 3
         preco_total <- qtde * 37
      caso 4
         preco_total <- qtde * 32
      caso 5
         preco_total <- qtde * 45
      outrocaso
         escreval("C�digo INEXISTENTE!")
   fimescolha
   escreval("Pre�o Total : R$ ",preco_total)
fimalgoritmo
