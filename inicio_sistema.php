<?php 
session_start();
require_once 'conexion/conexion.php';
if ($_SESSION['ident']) {
	echo "";
}
else
{
	header('location: index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>BIENVENIDO</title>
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" media="(max-width: 300px)" href="css/inicio.css">
        <link rel="stylesheet" href="css/inicio.css">

    <link rel="shortcut icon" href="img/imgmain/favicon-ilove.png" type="image/x-icon">
    <link rel="icon" type="image/png" href="img/imgmain/favicon-ilove.png"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
   
</head>
<body>

 <?php include('menuFreenet.php');  ?>
	
	
	<div class="row1">
		<a href="ingresos/facturas.php"><img id="iIngres" src="img/imgmain/ingresos.png"></a>
		<a href="gastos/pagos.php"><img id="iGast" src="img/imgmain/gastos.png"></a>
		<a href="contactos/contactos.php"><img id="iContac" src="img/imgmain/contactos.png"></a>
		<a href="inventario/items.php"><img id="iInven" src="img/imgmain/inventario.png"></a>
			
	</div>
	<div class="row2">
	<a href="bancos/bancos.php"><img calss="imgCat" src="img/imgmain/bancos.png"></a>
	<a href="categorias/categorias.php"><img calss="imgCat" src="img/imgmain/categorias.png"></a>
	<a href="reportes/reportes.php"><img calss="imgCat" src="img/imgmain/reportes.png"></a>
	<a href="config/index.php"><img calss="imgCat" src="img/imgmain/configuracion.png"></a>
			
	</div>
	
	<footer class="foot">Copyright@ 2018 Freenet.</footer>
</div>

</body>
</html>

	
