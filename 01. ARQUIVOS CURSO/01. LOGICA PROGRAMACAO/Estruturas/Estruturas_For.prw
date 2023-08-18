#include "protheus.ch"
#include "parmtype.ch"

User Function ForExemplo()

    Local nCount
    Local nNum := 0

    For nCount := 0 To 10 Step 2 // Step 2 para ir pulando de 2 em 2

        nNum += nCount

    Next

    Alert("Valor: " + cValToChar(nNum))

Return
