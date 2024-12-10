
<?php
require_once '../../View/layout/header.php';
?>
<h2>Registro de usuario</h2>
<form action="">
    <label for="nombre">Nombre:</label>
    <input type="text" name="nombre">

    <label for="email">Correo electronico:</label>
    <input type="text" name="email">

    <label for="telefono">Teléfono</label>
    <input type="text" name="telefono">

    <label for="fechaNacimiento">Fecha nacimiento:</label>
    <input type="text" name="fechaNacimiento">

    <label for="Contraseña">Contraseña:</label>
    <input type="text" name="Contraseña">

    <input type="submit" name="" id="">
</form>
<?php
require_once '../../View/layout/footer.php';
?>