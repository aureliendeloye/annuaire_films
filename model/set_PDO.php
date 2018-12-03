<?php 

$scriptUrl = $_SERVER['SCRIPT_NAME'];
$i = count(explode("/", trim($scriptUrl, '/')));
$baseUrl = 'https://'.$_SERVER['SERVER_NAME'].':'.$_SERVER['SERVER_PORT'].substr($scriptUrl, 0, -9);

    $username = 'root';
    $password = 'online@2017';
    $database ='annuaire_films';
    $host = 'localhost';

    try{

        $bdd = new PDO('mysql:host='.$host.';dbname='.$database.';charset=utf8',$username , $password);

    }catch (Exception $e){

        die('Erreur : ' . $e->getMessage());
    }