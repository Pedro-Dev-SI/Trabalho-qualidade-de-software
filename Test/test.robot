*** Settings ***
Library         SeleniumLibrary

*** Variables ***
${input_decimal}            id:dec-input
${input_binary}             id:bin-input
${convert-bin-btn}          name:convert-to-bin
${convert-dec-btn}          name:convert-to-dec

*** Keywords ***
abrir navegador e acessar a aplicação
    Open Browser            https://pedro-dev-si.github.io/binary-converter/    chrome

inserir um valor decimal no campo
    Input Text              ${input_decimal}            40

converter de decimal para binário
    Click Element           ${convert-bin-btn}

inserir um valor binário no campo
    Input Text              ${input_binary}             01

converter de binário para decimal
    Click Element           ${convert-dec-btn}

*** Test Cases ***
Cenário 1: Preencher formulário
    abrir navegador e acessar a aplicação
    inserir um valor decimal no campo
    inserir um valor binário no campo  

Cenário 2: Converter
    converter de decimal para binário
    converter de binário para decimal