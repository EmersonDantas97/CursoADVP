#include "protheus.ch"
#include "parmtype.ch"

User Function JgAdivinha()

    // VARIAVEL QUE SERA PREENCHIDA COM O CHUTE/PALPITE
    Local nPalpite := 0

    // VARIAVEL QUE VAI ARMAZENAR O VALOR CORRETO DO PALPITE
    Local nValor := 0 

    // VARIAVEL QUE VAI ARMAZENAR A QTD DE TENTATIVAS
    Local nNumTentativas := 5

    // ARMAZENANDO O VALOR ALEATORIO NA VARIAVEL nValor
    nValor := Aleatorio(10, 0)
    
    // CRIANDO LAÇO DE REPETICAO PARA REPETIR A PERGUNTA E AS DICAS
    While nNumTentativas > 0

        // PERGUNTANDO AO USUARIO O PALPITE/CHUTE
        nPalpite = FWInputbox("Digite seu palpite: (Restam " + cValToChar(nNumTentativas) + " tentativas)", "")

        // DIMINUINDO A QTD DE TENTATIVAS DISPONÍVEIS
        nNumTentativas -= 1

        // DICAS DADAS AO JOGADOR
        If(nPalpite == nValor)
            MsgAlert("Você acertou o palpite!")
        ElseIf(nPalpite < nValor)
            MsgAlert("O número correto é menor que o palpite!")
        ElseIf(nPalpite > nValor)
            MsgAlert("O número correto é maior que o palpite!")
        EndIf    

    EndDo

Return
