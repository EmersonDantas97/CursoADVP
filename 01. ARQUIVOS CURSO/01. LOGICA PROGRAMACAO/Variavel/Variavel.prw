#include "protheus.ch"
#include "parmtype.ch"

/*
TIPOS DE DADOS
Numérico: 3 / 21.000 / 0.4 / 200000
Lógico: .T. / .F.
Data: Date()
Caractere: "D" / "C"    Pode estar tanto entre aspas simples, como entre aspas duplas.                                                               
Array: ("Valor1", "Valor2", "Valor3")   O ADVPL suporta tanto arrays unidimensionais (que são os vetores), quanto os multidimensionais que são as Matrizes. São acessados por meio de índice numérico.
Bloco de código: {|| VALOR:= 1, MsgAlert("Valor é igual a " + cValToChar(VALOR))}
*/

User Function Variavel()

    Local nNum := 66
    Local lLogic := .T.
    Local cCarac := "Olá, mundo!"
    Local dData := Date() // Tendo em vista que não aplicamos nenhuma formatação, será apresentado: 08/15/23
    Local aArray := {"João", "Maria", "Jose"}
    Local bBloco := {|| nValor := 2, MsgAlert("O número é: "+cValToChar(nValor),"Teste")} // Para ser chamada, não pode ser via Alert, tem que ser via comando Eval

    Alert(nNum)
    Alert(lLogic)
    Alert(cValToChar(cCarac))
    Alert(dData)
    Alert(aArray[1])

    Eval(bBloco)

Return
