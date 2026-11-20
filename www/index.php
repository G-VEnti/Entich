<?php

    require_once("template.php");

    openHTML("home", "ENTIch - Portada");

    $data = <<<EOD
        <section id"hero">
            <h2>Juego destacado</h2>
                <article>
                    <h3>My little pony</h3>
                    <p>Ganador del fandom mas creepy</p>
                </article>
        </section>
        <section id="other">
            <h2>Otros juegos destacados</h2>
                <article>
                    <h3>Draw my life</h3>
                    <p>Ganador de unas palomitas</p>
                <article>
                <article>
                    <h3>Nintendogs</h3>
                    <p>Premio por perretes bonitos</p>
                <article>
                <article>
                    <h3>Hellow Kitto</h3>
                    <p>Me pica el pito</p>
                <article>
        </section>
EOD;

    writeMain($data);

    closeHTML();

?>