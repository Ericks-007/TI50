algoritmo "Algoritmo26"

var
   valor_compra, valor_venda, lucro : real
inicio
   escreval("Digite o valor de sua compra R$")
   leia(valor_compra)
   
   se (valor_compra < 10.00) entao
       lucro <- valor_compra * 0.7
       senao
            se (valor_compra < 30.00) entao
            lucro <- valor_compra * 0.5
                senao
                se (valor_compra < 50.00) entao
                lucro <- valor_compra * 0.4
                    senao
                    lucro <- valor_compra * 0.3
                fimse
            fimse
   fimse
   valor_venda <- valor_compra + lucro
   escreval("Valor de COmpra: R$",valor_compra)
   escreval("Lucro: R$",lucro:3:2)
   escreval("Valor da venda: R$",valor_venda:3:2)

fimalgoritmo
