<?php

$s = "Hello World!";
if (isset($_GET['info']) && $_GET['info'] == 1) {
    phpinfo();
} else {
    echo $s;
    var_dump($s);
}