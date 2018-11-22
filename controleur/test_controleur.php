<?php

require 'modele/test_modele.php';

// echo = $list;

$block = $twig->render('test.twig', array());

return $block;