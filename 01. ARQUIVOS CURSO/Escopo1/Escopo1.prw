#include "protheus.ch"
#include "parmtype.ch"

// VARIAVEL STATIC
Static cStatic := ''

User Function Escopo1()

    // VARIAVEIS LOCAIS
    Local nVar0 := 1
    Local nVar1 := 20

    // VARIAVEIS PRIVATE
    Private cPri := 'Private!'

    // VARIAVEIS PUBLIC
    Public __cPublic := 'RCTI'

    TestEscop(nVar0, @nVar1)
    
Return

/* FUNCAO STATIC */

Static Function TestEscop(nValor1, nValor2)

    Local __cPublic := 'Alterei!'
    Default nValor1 := 0

    // ALTERANDO CONTEÚDO DA VARIAVEL
    nValor2 := 10

    // MOSTANDO CONTEUDO DA VARIAVEL PRIVATE
    Alert("Private: "+cPri)

    // MOSTANDO CONTEUDO DA VARIAVEL PUBLIC
    Alert("Publica: "+__cPublic)

    MsgAlert(nValor2)
    Alert("Variavel Static: "+ cStatic)

Return
