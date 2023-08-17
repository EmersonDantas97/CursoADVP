#include "protheus.ch"
#include "parmtype.ch"

User Function UsoBloco()
    
    // EXEMPLO SEM PAR�METRO
    /*
    Local bBloco := {||Alert("Ol�, mundo!")} // Dentro dos Pipes s�o colocados os par�metro
    Eval(bBloco)
    */

    // EXEMPLO COM PAR�METRO
    Local bBloco := {|cMsg|Alert(cMsg)} // Dentro dos Pipes s�o colocados os par�metro
    Eval(bBloco, "Ol�, Mundo!")

Return
