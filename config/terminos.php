<?php 
session_start();
require_once '../conexion/conexion.php';
if ($_SESSION['ident']) {
	echo "";
	$sql = "SELECT * FROM plazos,usuarios WHERE usuarios.identificacion=plazos.identificacion_usuario and plazos.identificacion_usuario in(?)";
	$statement = $pdo->prepare($sql);
	$statement->execute(array($_SESSION['ident']));
	$result_plazos = $statement->fetchAll();
    
   
    
    
    if($_POST){
        $sql_insert = "insert into plazos(nombre_plazo,dias_plazo,identificacion_usuario) values(?,?,?)";
            $statement_insert = $pdo->prepare($sql_insert);
            $statement_insert->execute(array($_POST['name'],$_POST['dias'],$_SESSION['ident']));
            if($statement_insert){
                echo "
                    <script>
                        alert('Plazo agregado');
                        location.href = ('');
                    </script>
                ";
            }
    }
    if (@$_GET['actualizar']) {
         #consulta para traer datos de plazo por id_plazo
    	$sql_update = "SELECT * FROM plazos,usuarios WHERE usuarios.identificacion=plazos.identificacion_usuario and plazos.identificacion_usuario in(?) and plazos.id_plazo in(?)";
            $statement_update = $pdo->prepare($sql_update);
            $statement_update->execute(array($_SESSION['ident'],$_GET['actualizar']));
        $result_plazo_id = $statement_update->fetchAll();
    }
    

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
    <title>Fn Conta</title>
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="stylesheet" media="(max-width: 300px)" href="../css/inicio.css">
        <link rel="stylesheet" href="../css/inicio.css">

    <link rel="shortcut icon" href="../img/imgmain/favicon-ilove.png" type="image/x-icon">
    <link rel="icon" type="image/png" href="../img/imgmain/favicon-ilove.png"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
   <script src="../js/jquery.js"></script>
	<script type="text/javascript" src="../js/agregar_lista_debajo_nav.js"></script>
	
</head>
<body>

 <?php include('menuFreenetConfig.php');  ?>
	
	<center>
		<h2>Plazos</h2> <br>		
		<strong id="addPlazo">nuevo Plazo</strong>
    <div id="tablaRegisterPlazos">
        <table width="60%" width="50%">
           <form action="" method="post">
            <thead>
                <tr>
                    <th>Nombre Plazo</th>
                    <td><input type="text" name="name" placeholder="nombre"></td>
                    <th>Dias</th>
                    <td><td><input type="number" name="dias" placeholder="dias"></td></td>
            <td><td><input type="submit" value="agregar"></td></td>
                </tr>			

            </thead>
        </form>
        
        <div>
        <form action="update.php?actualizado=true" method="post">
        	<?php 
        	if (@$_GET['actualizar']) {
        	foreach ($result_plazo_id as $rs_plazo) {
			?>
           <tr>
			    <th></th>
				<td class="celda-tabla">-----------------------------------------</td>
				<td class="celda-tabla">-------------------------------------------</td>
				<td class="celda-tabla">--------------------------------------------</td>
				
			</tr>
            
			<tr>
			    <th>actualizar</th>
                <th><input type="hidden" name="id" name="id_plazo" value="<?php echo $_GET['actualizar']; ?>"></th>
				<td class="celda-tabla"><input type="text" name="nombre" value="<?php echo $rs_plazo['nombre_plazo']; ?>"></td>
				<td class="celda-tabla"><input type="number" name="dias" value="<?php echo $rs_plazo['dias_plazo']; ?>"></td>
				<td class="celda-tabla"><input type="submit" value="Guardar"></td>
				
			</tr>
			<?php 	
        	}
            }

        	?>
        </form>
        </div>

        </table>
       </div>
    <br><br>
	<table width="60%">
		<thead>
			<tr>
				<th>Nombre Plazo</th>
				<th>Dias</th>
				<th>accion</th>
				<th>accion</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			if ($result_plazos) {
			
			foreach ($result_plazos as $rs_plazos) {
			?>
			<tr>
				<td class="celda-tabla"><?php echo $rs_plazos['nombre_plazo']; ?></td>
				<td class="celda-tabla"><?php echo $rs_plazos['dias_plazo']; ?></td>
				<td class="celda-tabla"><a href="terminos.php?actualizar=<?php echo $rs_plazos['id_plazo']; ?>">actualizar</a></td>
				<td class="celda-tabla"><a href="eliminar.php?eliminar=<?php echo $rs_plazos['id_plazo']; ?>">eliminar</a></td>
			</tr>
			<?php 
			} 
		}
		else{
				
			?>
			<tr>
				<td></td>
				<td></td>
				<td>no hay plazos Registrados por el momento</td>
				<td></td>
				
			</tr>
			<?php
			}
			 ?>
			
		</tbody>
	</table>
	</center>
	<style>
        .celda-tabla{
            text-align: center;
        }
	</style>
    
	
	
	<footer class="foot">Copyright@ 2018 Freenet.</footer>
</div>

</body>
</html>

	
