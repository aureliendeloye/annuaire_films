<?php

require 'model/home_model.php';

echo $twig->render('home.twig', array('list' => $list, 'list2' => $list2));