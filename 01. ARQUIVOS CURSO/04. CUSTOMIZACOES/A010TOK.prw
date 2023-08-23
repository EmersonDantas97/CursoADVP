#include 'protheus.ch'
#include 'parmtype.ch'

/*

Pontos de entradas sao funcoes reservadas pela TOTVs que são chamadas em determinados pontos.

*/

User Function A010TOK()

    Local LExecuta := .T.
    Local cTipo := AllTrim(M->B1_TIPO)
    Local cConta := AllTrim(M->B1_CONTA)

    If(cTipo = "PA" .And. cConta = "001")
        Alert("A conta <b> " + cConta + "</b> não pode estar associada a um produto tipo <b>" + cTipo + "</b>")

        LExecuta := .F.

    EndIf

Return(LExecuta)
