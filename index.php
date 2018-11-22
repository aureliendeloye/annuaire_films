<?php

require_once 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('vue/');
$twig = new Twig_Environment($loader, array());



    require 'controleur/default_controleur.php';

    echo $block;