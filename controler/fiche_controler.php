<?php

switch ($action) {
    // case 'display':
    //     require 'model/test_model.php';
    //     break;
    default:
        display($twig, $list, $info);
        break;
 }

function display($twig, $list, $info){
    require 'model/fiche_model.php';
    echo $twig->render('fiche.twig', array('list' => $list, 'info' => $info));
}