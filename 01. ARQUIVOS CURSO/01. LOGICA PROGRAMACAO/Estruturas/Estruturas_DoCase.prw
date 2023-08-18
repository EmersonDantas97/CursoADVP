#include "protheus.ch"
#include "parmtype.ch"

User Function DoCase()

    Local cData := "15/12/2017"

    Do Case

        Case cData == "20/12/2017"
        Alert("Não é Natal " + cData)

        Case cData == "25/12/2017"
        Alert("É Natal!")

        OtherWise // Caso não seja nenhuma das opcoes
        MsgAlert("Não sei qual dia é hoje!")

    EndCase

Return
