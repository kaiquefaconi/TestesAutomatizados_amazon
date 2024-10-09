*** Settings ***
Resource          ../main.robot
Test Setup        Dado que eu acesse a Amazon
Test Teardown     Fechar o navegador

*** Test Cases ***
Processo completo de compra de um produto no site da Amazon
    Quando acessar o menu de "Venda na Amazon"   
    E deverá escolher os produtos eletronicos 
    Então deverá escolher o primeiro produto da página
    E deverá selecionar a opção de sem oferta adicional
    E selecionar a opção para fechar o pedido

Processo completo de pesquisa e compra de diversos itens no site da Amazon
    Quando acessar o menu de "Venda na Amazon"   
    E deverá escolher os produtos eletronicos 
    Então deverá escolher o primeiro produto da página
    E deverá selecionar a opção de sem oferta adicional
    E deverá selecionar a opção de "adicionar ao carrinho"
    E deverá fechar a oferta adicional
    Quando acessar o menu de "Venda na Amazon" 
    E deverá escolher os produtos de cozinha
    Então deverá escolher o primeiro produto da página cozinha
    E deverá selecionar a opção de sem oferta adicional
    E deverá selecionar a opção de "adicionar ao carrinho"
    Quando acessar o menu de "Venda na Amazon"
    E deverá escolher os produtos de casa
    E deverá escolher o primeiro produto da aba casa
    E deverá selecionar a opção de sem oferta adicional 
    E deverá selecionar a opção de "adicionar ao carrinho"

Processo completo de pesquisa de "Xbox Series S" no site da Amazon
    Quando pesquisar pelo produto "Xbox Series S"
    Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    E um produto da linha "Xbox Series S" deve ser mostrado na página

    

