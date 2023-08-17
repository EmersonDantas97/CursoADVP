#include "protheus.ch"
#include "parmtype.ch"

User Function ManipArray()

    /*
    AADD() - Permite a inser��o de um item em um Array ja existente.
    AINS() - Permite a inser��o de um elemento em qualquer posi��o do Array deixando ele com o mesmo n�mero de elementos e eliminando o ultimo elemento.
    ACLONE() - Realiza a c�pia de um Array para outro.
    ADEL() - Permite a exclus�o de um elemento do Array, tornando o ultimo valor NULL.
    ASIZE() - Redefine a estrutura de um Array pr�-existente, adicionando ou removendo.
    LEN() - Retorna a quantidade de elementos de um Array
    */

    Local aVetor := {10,20,30}

    // ADICIONANDO VALORES EM UMA ARRAY

    AADD(aVetor, 40)
    Alert(LEN(aVetor))
    Alert(aVetor[4])


    // TORNANDO UM CAMPO DA ARRAY NULO
    /*
    AINS (aVetor, 2)
    aVetor[2] := 200
    Alert(aVetor[2])
    Alert(aVetor[4])
    */

    // CRIANDO UMA C�PIA DO ARRAY
    /*
    Local nCount    
    aVetor2 := AClone(aVetor)
        for nCount:=1 TO Len(aVetor2)
            Alert (aVetor2[nCount])
        Next nCount
    */

    // LIMPANDO UM ELEMENTO DO ARRAY
    /*
    Adel(aVetor, 2)
    Alert(aVetor[3])
    Alert(Len(aVetor))
    */

    // REDIMENSIONANDO UM VETOR, REMOVE UM ELEMENTO DIMINUINDO O TAMANHO DA MINHA ARRAY
    /*
    Asize(aVetor, 2)
    Alert(Len(aVetor))
    */


Return
