<?php

    require_once("template.php");

    openHTML("login", "ENTIch - Login/Registro");
    
        $data = <<<EOD
        <form method="POST" action="login_check.php">
            <h2>Login</h2>
            <p>
                <label for="login-username">Usuario</label>
                <input type="text" name="username" id="login-username"/>
            </p>
            <p>
                <label for="login-password">Contraseña</label>
                <input type="password" name="password" id="login-password"/>
            </p>
            <p>
                <input type="submit" value="Identifícate"/>
            </p>
        </form>
EOD;

    writeMain($data);

    closeHTML();


?>
