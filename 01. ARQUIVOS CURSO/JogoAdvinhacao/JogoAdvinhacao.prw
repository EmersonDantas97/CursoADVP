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
    
    // CRIANDO LA�O DE REPETICAO PARA REPETIR A PERGUNTA E AS DICAS
    While nNumTentativas > 0

        // PERGUNTANDO AO USUARIO O PALPITE/CHUTE
        nPalpite = FWInputbox("Digite seu palpite: (Restam " + cValToChar(nNumTentativas) + " tentativas)", "")

        // DIMINUINDO A QTD DE TENTATIVAS DISPON�VEIS
        nNumTentativas -= 1

        // DICAS DADAS AO JOGADOR
        If(nPalpite == nValor)
            MsgAlert("Voc� acertou o palpite!")
        ElseIf(nPalpite < nValor)
            MsgAlert("O n�mero correto � menor que o palpite!")
        ElseIf(nPalpite > nValor)
            MsgAlert("O n�mero correto � maior que o palpite!")
        EndIf    

    EndDo

Return
