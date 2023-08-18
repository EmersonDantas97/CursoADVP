#include "protheus.ch"
#include "parmtype.ch"

User Function Banco001()

    // CRIANDO A VARIAVEL APONTANDO PARA A AREA DA SB1
    Local aArea := SB1->(GetArea())

    // ABRE A CONEXAO COM A TABELA
    DbSelectArea("SB1") // SELECIONANDO A TABELA SB1
    SB1->(DbSetOrder(1)) // POSICIONA NO INDICE 1
    SB1->(DbGoTop()) // INDO NO COMECO DA TABELA, SE PREPARANDO PARA FAZER A VARREDURA

    // POSICIONA O PRODUTO DE CÓDIGO 000002
    If SB1->(DbSeek(FWXFilial("SB1") + "000002")) // FWXFilial É A FILIAL QUE ESTÁ LOGADA NO SISTEMA
        Alert(SB1->B1_DESC) // MOSTRANDO A DESCRICAO DO PRODUTO "000002"
    EndIf

    // FECHA CONEXAO COM A TABELA
    RestArea(aArea)

Return

