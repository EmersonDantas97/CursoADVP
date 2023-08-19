#include "protheus.ch"
#include "parmtype.ch"

User Function Banco002()

    // CRIANDO A VARIAVEL APONTANDO PARA A AREA DA SB1
    Local aArea := SB1->(GetArea())
    Local cMsg := ""
    
    // ABRE A CONEXAO COM A TABELA
    DbSelectArea("SB1") // SELECIONANDO A TABELA SB1
    SB1->(DbSetOrder(1)) // POSICIONA NO INDICE 1
    SB1->(DbGoTop()) // INDO NO COMECO DA TABELA, SE PREPARANDO PARA FAZER A VARREDURA

    // SUBSTITUINDO A  FUNCAO DbSeek
    cMsg := Posicione('SB1', 1, FWXFilial('SB1')+'000002','B1_DESC') // RETORNA UM CAMPO ESPECIFICO DA TABELA 

    Alert("Descricao Produto: " + cMsg, "AVISO")

    // FECHA CONEXAO COM A TABELA
    RestArea(aArea)

Return

