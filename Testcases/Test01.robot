*** Settings ***
Resource    ../Ressources/ressource01.robot
Documentation    Cette suite de test est créee par Samia
Suite Setup    Log    J execute une fois avant le test
Suite Teardown    Log    j execute une fois apres le test
Test Setup    Se connecter a l'application orange demo
Test Teardown     fermer l application



*** Test Cases ***
tc001 login Test
    
    When Saisir le nom d'utilisation
    And Saisir le mot de passe
    And Cliquer sur le bouton login
    then Valider l affichage de la page d'accueil
    



