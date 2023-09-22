*** Settings ***
Resource    ../Ressources/ressource01.robot





*** Test Cases ***
tc001 login Test
    Se connecter a l'application orange demo
    Saisir le nom d'utilisation
    Saisir le mot de passe
    Cliquer sur le bouton login
    Valider l affichage de la page d'accueil
    fermer l application



