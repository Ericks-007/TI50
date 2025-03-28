Algoritmo "Alg14"
/
Var
   tempo, hora, min, seg : inteiro
Inicio
//Entrada
    escreval("Conversão de tempo em segundos para horas, minutos e segundos")
    escreval("Digite um intervalo de tempo, em segundos: ")
    leia(tempo)
    //Processamento
    hora <- tempo div 3600
    min <- (tempo % 3600) div 60
    seg <- (tempo % 3600) % 60
    //Saida
    escreval(tempo," seg. equivalem a",hora," h, ",min," min. e ",seg," seg.")


Fimalgoritmo