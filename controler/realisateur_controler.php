<?php

switch ($action) {
    case 'display':
        require 'model/realisateur_model.php';
    break;
    default:
        require 'model/realisateur_model.php';
        break;
 }

 echo $twig->render('realisateur.twig', array('list' => $list, 'baseUrl' => $baseUrl));