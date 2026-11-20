<?php

    function openHTML ($id = "", $title ="ENTIch")
    {
        echo <<<EOD
        <!doctype html>
        <html>
            <head>
                <title>$title</title>
            </head>
            <body>
                <header>
                    <h1>$title: share your games</h1>
                    <nav>
                        <menu>
                            <li><a href="games.php">Juegos</a></li>
                            <li><a href="people.php">Gente</a></li>
                            <li><a href="posts.php">Posts</a></li>
                            <li><a href="login.php">Log In/Registro</a></li>
                        </menu>
                    </nav>
                </header>
EOD;
}


    function writeMain ($data)
    {
        echo <<<EOD
                <main>
                    $data
                </main>
EOD;
}

    function closeHTML ()
    {
        echo <<<EOD
                <footer>
                    <h2>Pie de pagina</h2>
                </footer>
            </body>
        </html>
EOD;
}



?>