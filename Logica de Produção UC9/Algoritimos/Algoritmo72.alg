Algoritmo "Algoritmo72"
Var
    num, i, fat: inteiro

Inicio
    Escreval("Digite um n�mero (menor que 1 para sair): ")
    Leia(num)

    Enquanto num >= 1 faca
        fat <- 1
        Para i de 1 ate num faca
            fat <- fat * i
        FimPara

        Escreval(num, "! = ", fat)
        Escreval("Digite outro n�mero (menor que 1 para sair): ")
        Leia(num)
    FimEnquanto

    Escreval("Programa encerrado.")
FimAlgoritmo
