#include 'Protheus.ch'
#include 'parmtype.ch'

/*
Permite ações como inclusão, alteração e exclusão de informações.
Status de registros, legendas e filtros. 
*/

User Function MbrW01()

    Local cAlias := "SA2" // SA2 Cadastro de fornecedores do sistema
    Local cCores := {}
    Local cFiltra := "A2_FILIAL'" == xFilial('SA2') + "' .And. A2_EST == 'SP'"
    Private cCadastro := "Cadastro - MBrowse"
    Private aRotina := {} 
    Private aIndexSA2 := {} 
    Private bFiltraBrw := {||FilBrowse(cAlias, @aIndexSA2, @cFiltra)} 

    AADD(aRotina, {"Pesquisar",     "AxPesquisa"        , 0, 1}) // ", 1" = Tipos de operacoes
    AADD(aRotina, {"Visualizar",    "AxVisual"          , 0, 2})
    AADD(aRotina, {"Incluir",       "U_BInclui"         , 0, 3})
    AADD(aRotina, {"Alterar",       "U_BAltera"         , 0, 4})
    AADD(aRotina, {"Excluir",       "U_BDeleta"         , 0, 5})
    AADD(aRotina, {"Legenda",       "U_BLegenda"        , 0, 6})

    dbSelectArea(cAlias) // Indicando com qual tabela vamos trabalhar
    dbSetOrder(1) // Setando o índice 1

    Eval(bFiltraBrw)

    dbGoTop()
    mBrowse(6, 1, 22, 75, cAlias)

    EndFilBrw(cAlias, aIndexSA2)

Return

/******************************************************/
// Função U_BInclui
/******************************************************/

User Function BInclui(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxInclui(cAlias, nReg, nOpc) // Podemos adicionar o tratamento que quisermos antes de efetuarmos a inclusao

    If nOpcao == 1
        MsgInfo("Inclusão realizada com sucesso!")
    else
        MsgAlert("Inclusão cancelada!")
    EndIf

Return

/******************************************************/
// Função U_BAltera
/******************************************************/

User Function BAltera(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxAltera(cAlias, nReg, nOpc) // Podemos adicionar o tratamento que quisermos antes de efetuarmos a inclusao

    If nOpcao == 1
        MsgInfo("Alteração realizada com sucesso!")
    else
        MsgAlert("Alteração cancelada!")
    EndIf

Return Nil

/******************************************************/
// Função U_BDeleta
/******************************************************/

User Function BDeleta(cAlias, nReg, nOpc)

    Local nOpcao := 0
    nOpcao := AxDeleta(cAlias, nReg, nOpc) // Podemos adicionar o tratamento que quisermos antes de efetuarmos a inclusao

    If nOpcao == 1
        MsgInfo("Exclusão cancelada!")
    else
        MsgAlert("Exclusão realizada com sucesso!")
    EndIf

Return Nil
