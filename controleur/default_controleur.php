<?php

require './modele/default_modele.php';

echo $twig->render('default.twig', array('list' => $list));
