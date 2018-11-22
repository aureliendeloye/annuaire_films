<?php

require './modele/test_modele.php';

$block = $twig->render('test.twig', array('list' => $list));

return $block;