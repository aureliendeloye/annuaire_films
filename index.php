<?php
require_once 'vendor/autoload.php';

$loader = new Twig_Loader_Filesystem('view');
$twig = new Twig_Environment($loader, array());

$url = $_SERVER['REQUEST_URI'];
<<<<<<< HEAD
$request = explode("/", trim($url,'/'));
=======
$request = explode("/", trim(($url), '/'));
>>>>>>> 3fec094ecbe82fd679e2c4a2be95c34bcc61e0cc

$controler = (count($request) === 1)? 'home': $request[1];
$action = (count($request) < 3)? '': $request[2];
$item = (count($request) < 4)? 0 : (int)$request[3];

switch ($controler) {
   case 'test':
       require_once 'controler/test_controler.php';
       break;

    case 'home':
       require_once 'controler/home_controler.php';
       break;

<<<<<<< HEAD
    case 'list':
       require_once 'controler/list_controler.php';
       break;

    case 'realisateur':
    require_once 'controler/realisateur_controler.php';
    break;  


=======
       case 'gender':
       require_once 'controler/gender_controler.php';
       break;

>>>>>>> 3fec094ecbe82fd679e2c4a2be95c34bcc61e0cc
   default:
       require_once 'controler/home_controler.php';
       break;
}
