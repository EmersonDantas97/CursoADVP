#include "protheus.ch"
#include "parmtype.ch"

User Function Banco004()

    Local aArea := Sb1->(GetArea())

    DbSelectArea('SB1')
    Sb1->(DbSetOrder(1))
    Sb1->(DbGoTop())

    // INICIAR A TRANSACAO (NAO VAI DEIXAR NEM RODAR SELECT NA TABELA)
    Begin Transaction
            
            msgInfo("A descricao do produto será alterada!", "Atenção")
        
        If SB1->(DbSeek(FWXFilial('SB1') + '000002'))

            RecLock('SB1', .F.) // SE COLOCAR TRUE O REGISTRO É TRAVADO PARA INCLUSAO, QUANDO FALSE É TRAVADO PARA INCLUSÃO. NUNCA USE TRUE PARA UMA TABELA PADRAO DO SISTEMA.

            Replace B1_DESC With "MOUSE NORMAL SAMI"

            // DESTRAVA A TABELA
            Sb1->(MsUnlock())

        EndIf

        MsgAlert("Alteracao efetuada!")

    // DisarmTransaction() CANCELARIA A ALTERACAO FEITA PELO RECLOCK
    
    End Transaction

    RestArea(aArea)

Return
