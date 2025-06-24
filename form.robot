***Settings***
Library  SeleniumLibrary

***Variables***
${Input_firstname}       //input[@id="firstName"]
${Input_lastname}        //input[@id="lastName"]
${Input_email}           //input[@id="userEmail"]
${textarea_address}      //textarea[@id="currentAddress"] 
${button_submit}         //button[@id="submit"]

***Keywords***
abrir navegador e acessar o site
    Open browser    https://demoqa.com/automation-practice-form   chrome

Preencher campos
    Input text      ${Input_firstname}       Michel
    Input text      ${Input_lastname}        Said
    Input text      ${Input_email}           michel@gmail.com
    Input text      ${textarea_address}      xxxxca ca cacaffa
    
clicar em submit
    Click Element   ${button_submit}

fechar navegador
    close browser

***Test Cases***
Cenário 1: Preencher formulário
    abrir navegador e acessar o site
    Preencher campos
    clicar em submit
    fechar navegador
