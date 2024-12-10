<?php
use Lib\BaseDatos;

class ServicioModel
{
    private PDO  $conexion;

    public function __construct() 
    {
        $database = new BaseDatos();
        $this->conexion = $database->getConexion();
    }

     // Método para obtener todos los servicios
    public function getAllServicios() 
    {
        $sql = "SELECT nombre, precio FROM Servicios";
        $result = $this->conexion->query($sql);
        return $result->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
