#include "protheus.ch"
#include "parmtype.ch"

User Function Estruturas()

    Local nNum1 := 22
    Local nNum2 := 100

    // Estruturas de repeti��o

    // Estruturas de decisao ou Estruturas de desvio
    // IF
    If(nNum1 <= nNum2)
        MsgInfo("A vari�vel nNum1 � menor ou igual a vari�vel nNum2!")
    Else
        Alert("A vari�vel nNum1 n�o � igual ou menor a nNum2!")
    EndIf

    // ELSEIF
    If(nNum1 = nNum2)
        MsgInfo("A vari�vel nNum1 � igual a vari�vel nNum2!")
    ElseIf(nNum1 > nNum2)
        Alert("A vari�vel nNum1 � maior do que a vari�vel nNum2!")
    ElseIf(nNum1 < nNum2)
        Alert("A vari�vel nNum1 � menor do que a vari�vel nNum2!")
    EndIf
    
Return 
