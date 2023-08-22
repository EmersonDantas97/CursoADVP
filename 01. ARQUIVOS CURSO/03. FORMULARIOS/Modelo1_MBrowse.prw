#include 'Protheus.ch'
#include 'parmtype.ch'

/*
Permite a��es como inclus�o, altera��o e exclus�o de informa��es.
Status de registros, legendas e filtros. 
*/

User Function MbrW00()

    Local cAlias := "SB1"
    Private cTitulo := "Cadastro - MBrowse"
    Private aRotina := {} 

    AADD(aRotina, {"Pesquisar",     "AxPesquisa"        , 0, 1}) // ", 1" = Tipos de operacoes
    AADD(aRotina, {"Visualizar",    "AxVisual"          , 0, 2})
    AADD(aRotina, {"Incluir",       "AxIncluir"         , 0, 3})
    AADD(aRotina, {"Trocar",        "AxAltera"          , 0, 4})
    AADD(aRotina, {"Excluir",       "AxDeleta"          , 0, 5})
    AADD(aRotina, {"Ol�, Mundo",    "U_OlaMundo"        , 0, 6})

    dbSelectArea(cAlias)
    dbSetOrder(1)
    mBrowse(,,,,cAlias)

Return Nil'
