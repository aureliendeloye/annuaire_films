<?php

switch ($action) {
    case 'display':
        require 'model/list_model.php';
    break;
    default:
        require 'model/list_model.php';
        break;
 }

echo $twig->render('list.twig', array('list' => $list, 'baseUrl' => $baseUrl));