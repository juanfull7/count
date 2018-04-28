<?php 
session_start();
require_once '../conexion/conexion.php';
if ($_SESSION['ident']) {
	echo "";
}
else
{
	header('location: ../index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Reportes</title>
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" media="(max-width: 300px)" href="../css/inicio.css">
        <link rel="stylesheet" href="../css/inicio.css">

    <link rel="shortcut icon" href="../img/imgmain/favicon-ilove.png" type="image/x-icon">
    <link rel="icon" type="image/png" href="../img/imgmain/favicon-ilove.png"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
   
</head>
<body>

 <?php include('menuFreenetReportes.php');  ?>
	
	
	
	
	<footer class="foot">Copyright@ 2018 Freenet.</footer>
</div>

</body>
</html>

	
