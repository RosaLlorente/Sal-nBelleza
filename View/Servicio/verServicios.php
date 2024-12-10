<?php
require_once '../../View/layout/header.php';
?>

<h2>Servicios Ofrecidos</h2>
<ul>
    <?php if (isset($servicios) && is_array($servicios)): ?>
        <?php foreach ($servicios as $servicio): ?>
            <li>
                <?php echo htmlspecialchars($servicio['nombre']); ?>
                <span>
                    <?php echo htmlspecialchars($servicio['precio']); ?>€
                </span>
            </li>
        <?php endforeach; ?>
    <?php else: ?>
        <li>No se encontraron servicios.</li>
    <?php endif; ?>
</ul>

<?php
require_once '../../View/layout/footer.php';
?>
