#include "protheus.ch"
#include "parmtype.ch"

/*
TIPOS DE DADOS
Num�rico: 3 / 21.000 / 0.4 / 200000
L�gico: .T. / .F.
Data: Date()
Caractere: "D" / "C"    Pode estar tanto entre aspas simples, como entre aspas duplas.                                                               
Array: ("Valor1", "Valor2", "Valor3")   O ADVPL suporta tanto arrays unidimensionais (que s�o os vetores), quanto os multidimensionais que s�o as Matrizes. S�o acessados por meio de �ndice num�rico.
Bloco de c�digo: {|| VALOR:= 1, MsgAlert("Valor � igual a " + cValToChar(VALOR))}
*/

User Function Variavel()

    Local nNum := 66
    Local lLogic := .T.
    Local cCarac := "Ol�, mundo!"
    Local dData := Date() // Tendo em vista que n�o aplicamos nenhuma formata��o, ser� apresentado: 08/15/23
    Local aArray := {"Jo�o", "Maria", "Jose"}
    Local bBloco := {|| nValor := 2, MsgAlert("O n�mero �: "+cValToChar(nValor),"Teste")} // Para ser chamada, n�o pode ser via Alert, tem que ser via comando Eval

    Alert(nNum)
    Alert(lLogic)
    Alert(cValToChar(cCarac))
    Alert(dData)
    Alert(aArray[1])

    Eval(bBloco)

Return
