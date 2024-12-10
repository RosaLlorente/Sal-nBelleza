<?php
require_once __DIR__ . "/../Models/Servicio.php";

class ServicioController
{
    private ServicioModel $servicio;

    public function __construct()
    {
        $this->servicio = new ServicioModel();
    }

    public function listarServicios()
    {
        $servicios = $this->servicio->getAllServicios();
        require_once BASE_PATH . './View/Servicio/verServicios.php';
    }
}
?>
