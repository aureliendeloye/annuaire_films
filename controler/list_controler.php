<?php

//routeur pour l'action à effectuer
switch ($action) {
    case 'display': // action d'affichage des films

        // routeur pour l'identification de la recherche par nom
        switch ($id){
            case 'A'or'C'or'F'or'G'or'I'or'L'or'P'or'S':
            require 'model/list_X_model.php';
            break;

            default:
            require 'model/list_model.php';
            break;
        }
    break;

    default: //action par défaut : affichage des films (display)
        require 'model/list_model.php';
        break;
 }

// génération du bloque twig list avec la liste du ou des films à afficher
echo $twig->render('list.twig', array('list' => $list, 'baseUrl' => $baseUrl));