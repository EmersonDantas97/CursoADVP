#include 'protheus.ch'
#include 'parmtype.ch'

// CODIGO APENAS DIRECIONADO AO TESTE DE DEBUG

USER FUNCTION DEBUG01()

    LOCAL aArea := GETAREA()
    LOCAL aProduto := {}
    LOCAL nCount := 0
    
    // SELECIONANDO A TABELA DE PRODUTOS
    DBSELECTAREA("SB1")
    SB1->(DBSETORDER(1))
    SB1->(DBGOTOP())

    WHILE ! SB1->(EOF())

        AADD(aProduto, {SB1->B1_COD, SB1->B1_DESC})
        nCount++
        SB1->(DBSKIP())
        
    ENDDO
    
    MSGALERT("Quantidade de produtos encontrada: <b>"+CVALTOCHAR(nCount)+"</b>.")
    nCount := 0
    RESTAREA(aArea)

RETURN
