<?php
   
    require_once 'set_PDO.php';

    $sql = 'SELECT genre FROM genre';
    $response = $bdd->prepare( $sql );
    // $response->bindParam(':num', $num, PDO::PARAM_INT)
    $response->execute();
    $list = $response->fetchAll(PDO::FETCH_ASSOC);
    return $list;