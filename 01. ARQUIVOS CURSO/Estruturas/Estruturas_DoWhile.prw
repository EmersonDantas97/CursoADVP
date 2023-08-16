#include "protheus.ch"
#include "parmtype.ch"

User Function UsoWhile()

    // While simples
    /*
    Local nNum1 := 0
    Local nNum2 := 10

    While nNum1 < nNum2
        nNum1 += 1
    EndDo

    MsgAlert(nNum1 + nNum2)
    */


    // While com If
    Local nNum1 := 1
    Local cNome := "RCTI"

    While nNum1 != 10 .AND. cNome != "PROTHEUS"
        nNum1++

        if nNum1 == 5
            cNome := "PROTHEUS"
        EndIf

    EndDo

    Alert("Numero: " + cValToChar(nNum1))
    Alert("Nome: " + cValToChar(cNome))

Return
