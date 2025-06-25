***Settings***
Library  SeleniumLibrary

***Variables***
${variavel1}    teste
${variavel2}    abcde
${variavel3}    123456

***Keywords***
abrir site da google
    Open browser    https://www.google.com/     chrome

fechar navegador
    close browser    

abrir site da globo
    Open browser    https://www.globo.com/     chrome

***Test Cases***
Cenário 1: Teste de abrir navegador
    abrir site da google
    fechar navegador

Cenário 2: Teste de abrir site da globo
    abrir site da globo
    fechar navegador