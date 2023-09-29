*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}=    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${browser}=    edge

*** Test Cases ***

Tc01 login test
    Se connecter a l'application orange demo       ${url}    ${browser}
    Saisir le nom d'utilisation
    Saisir le mot de passe
    Cliquer sur le bouton login
    Valider l affichage de la page d'accueil
    fermer l application


*** keyword***
Se connecter a l'application orange demo
    	[Arguments]      ${Myurl}    ${Mybrowser}
    Open Browser        ${Myurl}    ${Mybrowser}
    Maximize Browser Window
    Sleep    3
Saisir le nom d'utilisation
    Clear Element Text    name:username
    Input Text    name:username    Admin

Saisir le mot de passe
    Clear Element Text    name:password
    Input Password    name:password   admin123

 Cliquer sur le bouton login
     Click Button    xpath://Button
     Sleep    3
Valider l affichage de la page d'accueil
      Element Text Should Be    xpath://h6    Dashboard 

 fermer l application
     Close Browser