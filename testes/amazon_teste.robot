*** Settings ***
Resource          ../main.robot
Test Setup        Dado que eu acesse a Amazon
Test Teardown     Fechar o navegador

*** Test Cases ***
Processo completo de compra de um produto no site da Amazon
    Quando acessar o menu de "Venda na Amazon"   
    E deverá escolher os produtos eletronicos 
    Então deverá escolher o primeiro produto da página
    E deverá selecionar as opções de quantidade
    Então escolhera a quantidade desejada(para o teste são 5)
    E deverá selecionar a opção de "adicionar ao carrinho"
    E deverá fechar a oferta adicional
    E deverá ir para a aba de carrinho
    E deverá selecionar as opções de quantidade para alterar no carrinho
    Então alterar a quantidade desejada(para o teste são 3)
    E deverá finalizar o processo selecionando a aopção de "Fechar pedido"
    

Processo completo de pesquisa e compra de diversos itens no site da Amazon
    Quando acessar o menu de "Venda na Amazon"   
    E deverá escolher os produtos eletronicos 
    Então deverá escolher o primeiro produto da página
    E deverá selecionar a opção de "adicionar ao carrinho"
    E deverá fechar a oferta adicional
    Quando acessar o menu de "Venda na Amazon" 
    E deverá escolher os produtos de cozinha
    Então deverá escolher o primeiro produto da página cozinha
    E deverá selecionar a opção de "adicionar ao carrinho"
    Quando acessar o menu de "Venda na Amazon"
    E deverá escolher os produtos de casa
    E deverá escolher o primeiro produto da aba casa
    E deverá selecionar a opção de "adicionar ao carrinho"
    E deverá ir para a aba de carrinho
    E deverá excluir um item do carrinho
    E verificar se o item foi excluido
    E deverá finalizar o processo selecionando a aopção de "Fechar pedido"

Processo completo de pesquisa de "Xbox Series S" no site da Amazon
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página

    

