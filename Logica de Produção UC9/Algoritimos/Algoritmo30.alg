algoritmo "Algoritmo30"

var
   preco, preco_t, des, preco_final : real
   cod, qtde : inteiro
inicio
   escreval("Loja Fisica - TI50")
   escreval("Digite o codigo de protudo de (entre 1 e 40):")
   leia(cod)
   
   se (cod <= 1) e (cod <= 10) entao
   preco <- 10
   senao
        se (cod <=20) entao
        preco <- 15
        senao
             se (cod <=30) entao
             preco <- 20
             senao
                  se (cod <=40) entao
                  preco <- 30
                  senao
                       escreval("VALOR DE CODIGO INVALIDO")
                  fimse
             fimse
        fimse
   fimse
   
   escreval("Preco Unitário do Produto: R$", preco)
   preco_t <- qtde * preco
   
   escreval("Preço Total, sem desconto: R$",preco_t)
   
   se (preco_t <= 250) entao
   desconto <- 0.05 * preco_t
   senao
        se (preco_t <= 500) entao
        desconto <- 0.1 * preco_t
        senao
             se (preco_t > 500) entao
             desconto <- 0.15 * preco_t
             fimse
        fimse
   fimse
   
fimalgoritmo
