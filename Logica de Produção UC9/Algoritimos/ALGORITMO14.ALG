Algoritmo "Algoritmo14"

Var
   tempo, h, m, s : inteiro
   
Inicio
    //Entrada
    escreval("Conversão de tempo em segundos para horas, minutos e segundos")
    escreval("Digite um intervalo de tempo, em segundos: ")
    leia(tempo)
    //Processamento
    h <- tempo div 3600
    m <- (tempo % 3600) div 60
    s <- (tempo % 3600) % 60
    //Saida
    escreval(tempo," seg. equivalem a",h," h, ",m," min. e ",s," seg.")
    
Fimalgoritmo