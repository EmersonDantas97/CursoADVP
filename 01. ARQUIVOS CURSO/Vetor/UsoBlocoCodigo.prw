#include "protheus.ch"
#include "parmtype.ch"

User Function UsoBloco()
    
    // EXEMPLO SEM PARÂMETRO
    /*
    Local bBloco := {||Alert("Olá, mundo!")} // Dentro dos Pipes são colocados os parâmetro
    Eval(bBloco)
    */

    // EXEMPLO COM PARÂMETRO
    Local bBloco := {|cMsg|Alert(cMsg)} // Dentro dos Pipes são colocados os parâmetro
    Eval(bBloco, "Olá, Mundo!")

Return
