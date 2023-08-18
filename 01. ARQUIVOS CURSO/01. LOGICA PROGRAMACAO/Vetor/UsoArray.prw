#include "protheus.ch"
#include "parmtype.ch"

User Function UsoArray()
    
    Local dData := Date()
    Local aValores := {"João", dData, 100}

    Alert(aValores[2]) // Exibindo a posição 2 do array
    Alert(aValores[3]) // Exibindo a posição 2 do array

Return
