*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Variables scalaire: c est des simples variables qui peuvent contenir une seule valeur a la fois (portée globale)
${Premiere valeur}=    100
${deuxieme valeur}=    200
${Nom}=    Samia
${troisieme valeur}=    200,5
${Browser}=    chrome
${Url}=    https://www.google.com

#les variables de type liste
@{Ville}=    montreal    laval    pierrefond
@{List valeur}=    1    2    3    4

#les variables de type dictionnaire : on stock les données sous forme de pair clé : valeur   
&{Url-Env}=    qa=https://www.google.qa.c    dev=https://www.google.dev.ca

*** Test Cases ***
tc001 mon premier test
    Log    ${Premiere valeur}
    Log    ${deuxieme valeur}
    Log    ${Nom}
    Log    ${troisieme valeur}
    Log    ${Browser}
    Log    ${Url}
    Log    ${Ville}[0]
    Log    ${Ville}[1] ${Ville}[2]
    Log    ${Url-Env}[qa]
    Log    ${Url-Env}[dev]
    #Log    ${quatrieme valeur}
tc02 mon deuxieme test    
    #${quatrieme variable}=    Log    test
    Log    ${nom}