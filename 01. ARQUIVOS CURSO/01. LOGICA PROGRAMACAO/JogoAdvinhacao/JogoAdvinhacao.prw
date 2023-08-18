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
    // nValor := Randomize(1, 1000)
    nValor := Aleatorio(10, 0)

    // CRIANDO LA�O DE REPETICAO PARA REPETIR A PERGUNTA E AS DICAS
    While nNumTentativas > 0

        // PERGUNTANDO AO USUARIO O PALPITE/CHUTE
        nPalpite = Val(FWInputbox("Digite seu palpite: (Restam " + cValToChar(nNumTentativas) + " tentativas)", ""))

        // DIMINUINDO A QTD DE TENTATIVAS DISPON�VEIS
        nNumTentativas--

        // DICAS DADAS AO JOGADOR
        If nPalpite == nValor
            MsgInfo("Voc� acertou o palpite! <br>O n�mero � " + cValToChar(nValor) + ".")
            Return
        ElseIf nPalpite < nValor
            MsgAlert("O palpite � menor que o n�mero correto!")
        ElseIf nPalpite > nValor
            MsgAlert("O palpite � maior que o n�mero correto!")
        EndIf    

    EndDo

Return




