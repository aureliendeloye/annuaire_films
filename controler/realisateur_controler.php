<?php

// routeur pour l'action à effectuer
switch ($action) {

    case 'display': //affichage des realisateurs
        // routeur pour l'identification de la recherche par nom
        switch ($id){
            case 'B'or'C'or'F'or'G'or'K'or'M'or'N'or'S'or'T'or'W':
            require 'model/realisateur_X_model.php';
            break;

            default:
            require 'model/realisateur_model.php';
            break;
        }
    break;
   
    default: // comportement par défaut ; affichage (display)
        require 'model/realisateur_model.php';
    break;
 }

//  rendu du block twig realisateur avec les données récupérés dans la base 
 echo $twig->render('realisateur.twig', array('list' => $list, 'baseUrl' => $baseUrl));