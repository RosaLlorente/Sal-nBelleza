<?php
require_once 'vendor/autoload.php';
require_once 'Config/config.php';
require_once BASE_PATH . 'View/layout/header.php';
?>
<h1>Bienvenido al salón de belleza</h1>
<nav>
    <a href="<?= BASE_URL ?>Cliente/RegistroCliente.php">Registrarse</a>
    <a href="<?= BASE_URL ?>Cliente/InicioSesionCliente.php">Iniciar Sesión</a>
    <a href="<?= BASE_URL ?>Servicio/verServicios.php">Ver Servicios</a>
    <a href="<?= BASE_URL ?>Citas/crearCita.php">Realizar citas</a>
    <a href="<?= BASE_URL ?>Citas/listarCitas.php">Ver citas</a>
</nav>
<?php
require_once BASE_PATH . 'View/layout/footer.php';
?>
