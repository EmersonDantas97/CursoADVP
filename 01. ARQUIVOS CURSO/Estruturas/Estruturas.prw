#include "protheus.ch"
#include "parmtype.ch"

User Function Estruturas()

    Local nNum1 := 22
    Local nNum2 := 100

    // Estruturas de repetição

    // Estruturas de decisao ou Estruturas de desvio
    // IF
    If(nNum1 <= nNum2)
        MsgInfo("A variável nNum1 é menor ou igual a variável nNum2!")
    Else
        Alert("A variável nNum1 não é igual ou menor a nNum2!")
    EndIf

    // ELSEIF
    If(nNum1 = nNum2)
        MsgInfo("A variável nNum1 é igual a variável nNum2!")
    ElseIf(nNum1 > nNum2)
        Alert("A variável nNum1 é maior do que a variável nNum2!")
    ElseIf(nNum1 < nNum2)
        Alert("A variável nNum1 é menor do que a variável nNum2!")
    EndIf
    
Return 
