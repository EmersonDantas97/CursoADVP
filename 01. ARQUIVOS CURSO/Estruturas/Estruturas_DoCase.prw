#include "protheus.ch"
#include "parmtype.ch"

User Function DoCase()

    Local cData := "15/12/2017"

    Do Case

        Case cData == "20/12/2017"
        Alert("N�o � Natal " + cData)

        Case cData == "25/12/2017"
        Alert("� Natal!")

        OtherWise // Caso n�o seja nenhuma das opcoes
        MsgAlert("N�o sei qual dia � hoje!")

    EndCase

Return
