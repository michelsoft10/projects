***Settings***
Library     SeleniumLibrary

***Variables***
#Dados do teste
${NomeDaMusica}     Samuel Mariano Respira

#Variáveis de configurações
${URL}      https://www.youtube.com/   
${Browser}  Chrome

#Elementos
${input_pesquisa}   //input[@name="search_query"]
${button_pesquisa}  //button[@class="ytSearchboxComponentSearchButton"]
${primeiro}         (//yt-formatted-string[@class="style-scope ytd-video-renderer"])[1]
${Prova}

***Keywords***
Dado que acesso o site do youtube
    Open Browser    ${url}      ${Browser}

Quando digito o nome da música
    Input text      ${input_pesquisa}       ${NomeDaMusica}

E clico no botão buscar
    Click Element   ${button_pesquisa}

E clico na primeira opção da lista
    Click Element   ${primeiro}

Entâo o vídeo é executado
    Element Should Be Visible   ${Prova}
    Sleep 1s
    close Browser

***Test Cases***
Cenário 1: Executar vídeo no site do youtube
    Dado que acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Entâo o vídeo é executado