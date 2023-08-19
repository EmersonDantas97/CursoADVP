#include "protheus.ch"
#include "parmtype.ch"
#include "TopConn.ch" // Para executar a query, precisa desta include

User Function Banco003()

    Local aArea := SB1->(GetArea())
    Local cQuery := ""
    Local aDados := {}
    Local nCount

    // EVITAR UTILIZA O * 
    // BOA PRÁTICA ESCREVER O SQL EM MAIÚSCULA

    // MONTANDO CODIGO SQL
    cQuery := " SELECT "
    cQuery += " B1_COD AS CODIGO, "
    cQuery += " B1_DESC AS DESCRICAO "
    cQuery += " FROM "
    cQuery += " " + RetSQLName("SB1") + " SB1 "
    cQuery += " WHERE "
    cQuery += " B1_MSBLQL != '1' "

    MsgInfo(cQuery)

    // EXECUTANDO A CONSULTA ACIMA
    TCQuery cQuery New Alias "TMP"

    // PERCORRENDO AS LINHAS DENTRO DO CONJUNTO DE DADOS RETORNADO
    While ! TMP->(EOF())
        AADD(aDados, TMP->CODIGO) // ADICIONANDO A COLUNA DE CODIGO DENTRO DO MEU ARRAY
        AADD(aDados, TMP->DESCRICAO) // ADICIONANDO A DESCRICAO DE CODIGO DENTRO DO MEU ARRAY
        TMP->(DbSkip()) // SAINDO DA TABELA TEMPORARIA
    EndDo

    Alert(Len(aDados)) // VAI TRAZER O NUMERO 4, POIS É DUAS COLUNA COM 2 LINHAS

    For nCount := 1 To Len(aDados)
        MsgInfo(aDados[nCount]) // VAI MOSTAR 1 MSG BOX PARA CADA ELEMENTO DO ARRAY
    Next nCount

    TMP->(DbCloseArea()) // FECHANDO TABELA TEMPORARIA
    RestArea(aArea) // FECHANDO A CONEXAO COM A SB1


Return
