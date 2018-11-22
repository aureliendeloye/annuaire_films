<?php

require_once 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('vue/');
$twig = new Twig_Environment($loader, array());

$url = $_SERVER['REQUEST_URI'];

switch ($url){

    case '/':
    require 'controleur/default_controleur.php';
    break;

    case '/test':
    require 'controleur/test_controleur.php';
    break;

}

    

    