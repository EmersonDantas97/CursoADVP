#include "protheus.ch"
#include "parmtype.ch"

User Function Banco005()

    Local aArea := GetArea()
    Local aDados := {}
    Private LmsErroAuto := .F.

    // ADICIONANDO DADOS NO VETOR PARA TESTE DE INCLUSAO NA TABELA SB1
    aDados :=                                       ;
    {                                               ;
        {"B1_COD",      "111111", Nil},             ;
        {"B1_DESC",     "PRODUTO TESTE", Nil},      ;
        {"B1_TIPO",     "GG", Nil},                 ;
        {"B1_UM",       "PC", Nil},                 ;
        {"B1_LOCPAD",   "1", Nil},                  ;
        {"B1_PICM",     0, Nil},                    ;
        {"B1_IPI",      0, Nil},                    ;
        {"B1_CONTRAT",  "N", Nil},                  ;
        {"B1_LOCALIZ",  "N", Nil}                   ;
    }

    // INICIO DO CONTROLE DE TRANSACAO
    Begin Transaction

        // CHAMA CADASTRO DE PRODUTO
        MSExecAuto({|x,y|Mata010(x,y)}, aDados, 3) // 3 INCLUSAO, 4 ALTERACAO, 5 EXCLUSAO.

        // CASO OCORRA ALGUM ERRO
        If LmsErroAuto
            Alert("Ocorreram erros durante a operação!")
            MostraErro()

            DisarmTransaction()
        Else
            MsgInfo("Operacao finalizada!")
        EndIf

    End Transaction

    RestArea(aArea)

    // CASO EU TENTE INSERIR OS MESMOS VALORES, SERÁ MOSTRADO O ERRO LOG. 

Return
