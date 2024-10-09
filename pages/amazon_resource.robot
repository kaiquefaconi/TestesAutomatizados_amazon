*** Settings ***
Resource    ../main.robot
Test Setup   Dado que eu acesse a Amazon
Test Teardown    Fechar o navegador
Library    XML

*** Variables ***
${Mais-vendidos}            //a[@href='/gp/bestsellers/?ref_=nav_cs_bestsellers'][contains(.,'Mais Vendidos')]
${Eletronicos}              //a[@href='/gp/bestsellers/electronics/ref=zg_bs_nav_electronics_0'][contains(.,'Eletrônicos')]
${Produto}                 (//div[contains(@class,'a-section a-spacing-mini _cDEzb_noop_3Xbw5')])[1]
${Sem-oferta}              //div[contains(@aria-expanded,'false')]
                        
${Carrinho-adicionar}      //input[contains(@name,'submit.add-to-cart')]
${Garantia}                class:a-button-input
${Fechar}                  id:attach-close_sideSheet-link 
${Carrinho-navBar}         id:nav-cart
${Fechar-pedido}           //input[contains(@name,'submit.buy-now')]

${Recusa-oferta-adicional}    //button[contains(@data-action,'a-popover-close')]
${Cozinha}                   //a[contains(.,'Cozinha')]
${Produto-cozinha}          (//div[contains(@class,'_cDEzb_iveVideoWrapper_JJ34T has-ive-video')])[1]
${Casa}                      //a[@href='/gp/bestsellers/home/ref=zg_bs_nav_home_0'][contains(.,'Casa')]
${Produto-casa}                (//div[contains(@id,'gridItemRoot')])[1]
${Qtd-Produto-casa}            //input[contains(@name,'submit.add-to-cart')]    
${Carrinho-casa}                id:add-to-cart-button
                              






${Barra_pesquisa}          //input[contains(@id,'twotabsearchtextbox')]
${Título_com_filtragem}    Amazon.com.br : Xbox Series S
${Resultados_encontrados}   xpath=//div[@class='a-section a-spacing-small a-spacing-top-small']//span[@class='a-color-state a-text-bold' and contains(text(), '"Xbox Series S"')]

*** Keywords ***
Quando acessar o menu de "Venda na Amazon"
    Click Element    ${Mais-vendidos}

E deverá escolher os produtos eletronicos 
    Click Element    ${Eletronicos}

Então deverá escolher o primeiro produto da página
    Click Element    ${Produto}
    Sleep    2s
E deverá selecionar a opção de sem oferta adicional
    Click Element    ${Sem-oferta}

E selecionar a opção para fechar o pedido
    Click Element    ${Fechar-pedido}


E deverá selecionar a opção de "adicionar ao carrinho"
    Click Element    ${Carrinho-adicionar}
    Sleep    2s


E deverá fechar a oferta adicional
    Click Element    ${Recusa-oferta-adicional}

E deverá escolher os produtos de cozinha
    Click Element    ${Cozinha}
    

Então deverá escolher o primeiro produto da página cozinha
    Click Element    ${Produto-cozinha}


E deverá escolher os produtos de casa
    Click Element    ${Casa}
    Sleep    1s

E deverá escolher a quantidade do produto
    Click Element    ${Qtd-Produto-casa}

E deverá escolher o primeiro produto da aba casa
    Click Element    ${Produto-casa}






Quando pesquisar pelo produto "Xbox Series S"
  Input Text    ${Barra_pesquisa}    Xbox Series S
  Click Element    id:nav-search-submit-button
  Sleep    10s
 
 
Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Title Should Be    ${Título_com_filtragem}
     Sleep    10s
E um produto da linha "Xbox Series S" deve ser mostrado na página
    Element Should Be Visible    ${Resultados_encontrados}
     Sleep    10s


