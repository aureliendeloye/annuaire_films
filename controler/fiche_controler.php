<?php

switch ($action) {
    // case 'display':
    //     require 'model/test_model.php';
    //     break;
    default:
        require 'model/test_model.php';
        break;
 }

echo $twig->render('test.twig', array('list' => $list));