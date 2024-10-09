*** Settings ***
Resource    ../main.robot

*** Keywords ***

Dado que eu acesse a Amazon
    Open Browser    url=https://www.amazon.com.br/?tag=msndesktopabk-20&ref=pd_sl_7to86bd2ph_e&adgrpid=1141293728081284&hvadid=71331024009172&hvnetw=o&hvqmt=e&hvbmt=be&hvdev=c&hvlocint=&hvlocphy=116068&hvtargid=kwd-71331371436168:loc-20&hydadcr=26346_11690411      browser=Edge
    Maximize Browser Window
    Execute Javascript  document.body.style.zoom = "0.8"

Fechar o navegador
    Close Browser    