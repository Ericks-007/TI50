Algoritmo "Algoritmo71"
Var
    N, i: inteiro
    S: real

Inicio
    Escreva("Digite o valor de N: ")
    Leia(N)
    S <- 0

    Para i de 1 ate N faca
        S <- S + 1 / (i ^ i)
    FimPara

    Escreva("O valor de S é: ", S:0:10)
FimAlgoritmo
