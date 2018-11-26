<?php

require 'model/gender_model.php';

echo $twig->render('gender.twig', array('list' => $list));