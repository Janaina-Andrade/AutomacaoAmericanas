***Settings***
Library  SeleniumLibrary

***Variables***
${URL}              https://www.americanas.com.br/
${BROWSER}          chrome 
${BTN_PESQUISAR}    css=#rsyswpsdk > div > header > div.src__Inner-sc-q7wx4i-2.kXfNUu > div.src__Container-sc-q7wx4i-3.fVZPdo > div > div.search__Container-sc-1wvs0c1-0.fpjaUO > form > button
${INPUT_PESQUISAR}  name=conteudo
***Keywords***  
Acessar a página da Americanas
  Open Browser  url=${URL}  browser=${BROWSER}
  Title Should Be  Americanas - tudo, a toda hora, em qualquer lugar :)

Pesquisar por "${TEXTO_PEQUISA}"
  Input Text  ${INPUT_PESQUISAR}  ${TEXTO_PEQUISA}  
  Click Button  ${BTN_PESQUISAR}

Conferir mensagem de pesquisa por "${MSG_ENCONTRADA}"
    Page Should Contain  ${MSG_ENCONTRADA}