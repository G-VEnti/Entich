<?php
    echo "<p>Little bitch</p>";

    $num = 33;

    echo "<p>Num = ".$num."</p>";

    echo "<ul>";
    for ($i = 0; $i < $num; $i++){
        echo "<li>Num = ".$i."</li>";
    }
    echo "</ul>";

    $list = ["macarrones", "yoMama", "manueh"];

    echo "<ul>";
    for ($i = 0; $i < count($list); $i++){
        echo "<li>Articulo = ".$list[$i]."</li>";
    }
    echo "</ul>";


?>