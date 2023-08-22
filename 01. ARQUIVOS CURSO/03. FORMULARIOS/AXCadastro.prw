/*

MODELO 1 ou AXCADASTRO
Para cadastranebti em tela cheia. Ex.: Cadastro de cliente. 

MODELO 2 
Cadastramento envolvendo apenas uma tabela. Ex.: Pedido de compra. 

MODELO 3 
Cadastramento envolvendo duas tabelas, um com dados de cabeçalho e outro digitado em linhas com os itens. Ex.: Pedido de vendas, orçamento e etc.

*/

#include 'Protheus.ch'
#include 'parmtype.ch'

User Function Modelo1()

    Local cAlias := "SB1"
    Local cTitulo := "Cadastro - AXCadastro"
    Local vVldExc := ".T." // Permite que o usuario exclua o item?
    Local vVlDalt := ".T." // Permite que o usuario altere o item?

    AxCadastro(cAlias, cTitulo, vVldExc, vVlDalt)
    
    // É utilizada quando eu quero preencher uma tabela especifica.

Return Nil
