#include 'Protheus.ch'
#include 'parmtype.ch'

/*
Permite a��es como inclus�o, altera��o e exclus�o de informa��es.
Status de registros, legendas e filtros. 
*/

User Function MbrW01()

    Local cAlias := "SA2" // SA2 Cadastro de fornecedores do sistema
    Local aCores := {}
    Local cFiltra := "A2_FILIAL'" == xFilial('SA2') + "' .And. A2_EST == 'SP'"
    Private aRotina := {} 
    Private aIndexSA2 := {} 
    Private cCadastro := "Cadastro - MBrowse"
    Private bFiltraBrw := {||FilBrowse(cAlias, @aIndexSA2, @cFiltra)} 

    AADD(aRotina, {"Pesquisar",     "AxPesquisa"        , 0, 1}) // ", 1" = Tipos de operacoes
    AADD(aRotina, {"Visualizar",    "AxVisual"          , 0, 2})
    AADD(aRotina, {"Incluir",       "U_BInclui"         , 0, 3})
    AADD(aRotina, {"Alterar",       "U_BAltera"         , 0, 4})
    AADD(aRotina, {"Excluir",       "U_BDeleta"         , 0, 5})
    AADD(aRotina, {"Legenda",       "U_BLegenda"        , 0, 6})

    AADD(aCores, {"A2_TIPO == 'F'", "BR_VERDE"})
    AADD(aCores, {"A2_TIPO == 'J'", "BR_AMARELO"})
    AADD(aCores, {"A2_TIPO == 'X'", "BR_LARANJA"})
    AADD(aCores, {"A2_TIPO == 'R'", "BR_MARROM"})
    AADD(aCores, {"Empty(A2_TIPO)", "BR_PRETO"})

    dbSelectArea(cAlias) // Indicando com qual tabela vamos trabalhar
    dbSetOrder(1) // Setando o �ndice 1

    Eval(bFiltraBrw)

    dbGoTop()
    mBrowse(6, 1, 22, 75, cAlias,,,,,,aCores)

    EndFilBrw(cAlias, aIndexSA2)

Return

/******************************************************/
// Fun��o U_BInclui
/******************************************************/
User Function BInclui(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxInclui(cAlias, nReg, nOpc) // Podemos adicionar o tratamento que quisermos antes de efetuarmos a inclusao

    If nOpcao == 1
        MsgInfo("Inclus�o realizada com sucesso!")
    else
        MsgAlert("Inclus�o cancelada!")
    EndIf

Return

/******************************************************/
// Fun��o U_BAltera
/******************************************************/
User Function BAltera(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxAltera(cAlias, nReg, nOpc) // Podemos adicionar o tratamento que quisermos antes de efetuarmos a inclusao

    If nOpcao == 1
        MsgInfo("Altera��o realizada com sucesso!")
    else
        MsgAlert("Altera��o cancelada!")
    EndIf

Return Nil

/******************************************************/
// Fun��o U_BDeleta
/******************************************************/
User Function BDeleta(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxDeleta(cAlias, nReg, nOpc) // Podemos adicionar o tratamento que quisermos antes de efetuarmos a inclusao

    If nOpcao == 1
        MsgInfo("Exclus�o cancelada!")
    else
        MsgAlert("Exclus�o realizada com sucesso!")
    EndIf

Return Nil

/******************************************************/
// Fun��o U_BLegenda
/******************************************************/
User Function BLegenda(cAlias, nReg, nOpc)

    Local aLegenda := {}

    AADD(aLegenda, {"BR_VERDE", "Pessoa f�sica"})
    AADD(aLegenda, {"BR_AMARELO", "Pessoa jur�dica"})
    AADD(aLegenda, {"BR_LARANJA", "Exporta��o"})
    AADD(aLegenda, {"BR_MARROM", "Fornecedor Rural"})
    AADD(aLegenda, {"BR_PRETO", "N�o classificado"})

    BRWLegenda(cCadastro, "Legenda", aLegenda)
    
Return
