<?php

switch ($action) {
    // case 'list':
    //     require 'model/home_model.php';
    //     break;
    default:
        require 'model/home_model.php';
        break;
 }

echo $twig->render('home.twig', array('list' => $list));
