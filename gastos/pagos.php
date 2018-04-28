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
<title>Pagos</title>
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="icon" type="image/png" href="../img/imgmain/favicon-ilove.png"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/factura.css">

</head>

<?php 


#consulta para traer el id cliente
if(session_start()){	
	 $sq="SELECT nombre_cliente FROM clientes ORDER BY nombre_cliente";
	$stat = $pdo->prepare($sq);
	$stat->execute(array());
	echo ($_SESSION['usuario']). "<br>" ;
	$arre_php = array();  

 if($stat->rowCount()==0)  
   array_push($arre_php, "Na hay datos");
    else{
        while($palabras = $stat->fetch(PDO::FETCH_ASSOC)){
         array_push($arre_php, $palabras['nombre_cliente']);
}
}
//for($p=0 ; $p< count($arre_php); $p++)
  //  echo $arre_php[$p]. "<br>";
     
      
      }
      #consulta para traer entradas
    $sqlE = "select * from entradas";
	$statE = $pdo->prepare($sqlE);
    
	$statE->execute(array($numerof));
    
	$resEn = $statE->fetchAll();
	
      
      
       #consulta para tabla item_factura
   $sqlItem = "select * from item_factura";
	$sta = $pdo->prepare($sqlItem);
    
	$sta->execute(array());
    
	$resultItem = $sta->fetchAll();
	foreach($resultItem as $rsItem){
	$idItem = $rsItem['id_item'];
        echo $idItem;
	}  
?>



<?php include('menuFreenetGastos.php');  ?>
<body>

 <div>
      

    <div id="cuerpo">

      <article>

         

          <section class="contenido">
              <div class="actionbar-cont">
                  <h1>Pagos</h1>
                   <a class="espac" href="#"><img src="" alt=""></a>
                  <a class="exportar" id="btnExport" href="#"><img src="../img/factura/download.svg">Exportar</a>
                  <a href="crearFactura.php"> <div class="btn-nuevo"><img style="width:10% ; margin:0 7px; "src="../img/iconta/nueva factura 1 icon.png">Nuevo Pago</div></a>
              </div>

              <div class="vacio"></div>
              <div class="filtros">
                  <input type="text">
                  <input type="text">
                  <input type="text">
                  <input type="text">
                  <input type="text">
                  <a href="">Filtrar</a>
                  <a href="">Cerrar</a>
              </div>
          </section>

          <section class="cont-tab">
              <div class="contHeadTab">
                  
              </div>
              <div>
                  <div id='espaciado' class="espaciado">
                      <table id="tabView" border="1" width="100%" style="text-align: center;">
                      
                          	
				<tr style="background-color: gray; color: white; text-transform: uppercase; font-size: 12px">
					<td>Numero</td>
					<td>Cliente</td>
					<td>Creación</td>
					<td>Vencimiento</td>
					<td>Total</td>
					<td>Pagado</td>
					<td>Por pagar</td>
					<td>Estado</td>
					<th colspan="3" align="center">Acciones</th>
				</tr>
			
				<?php foreach (@$resEn as $res) {?>
				
					<tr>
						<td id="cod"><?php echo $res['numero']; ?></td>
						<td><?php echo $res['id_cliente']; ?></td>
						<td><?php echo $res['fecha']; ?></td>
						<td><?php echo $res['vencimiento']; ?></td>
						<td><?php echo $res['totalTotal']; ?></td>
						<td><?php echo Pagado; ?></td>
						<td><?php echo 'Por pagar'; ?></td>
						<td><?php echo 'Estado'; ?></td>
						<td><a href="modificar.php?id=<?php echo $row['id'];?>">Modificar</a></td>
						<td><a id="" class="" href="elimina_factura.php?id_entrada=<?php echo $res['id_entrada']; ?>">Eliminar</a></td>

							
					</tr>
				<?php } ?>
			</table>

                          </tbody>
                    
                  </div>
              </div>

          </section>

      </article>

     
    </div>

    <footer>@Freenet sas

    </footer>

  </div>

    

</body>
<script type="text/javascript" src="../js/jquery.js"></script>

<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
<script>
        $("#btnExport").click(function(e) {
            var dt = new Date();
            var day = dt.getDate();
            var month = dt.getMonth() + 1;
            var year = dt.getFullYear();
            var hour = dt.getHours();
            var mins = dt.getMinutes();
            var postfix = day + "." + month + "." + year + "." + hour + "." + mins;
            //creating temporary HTML link element (they support settings file names)
            var a = document.createElement('a');
            //getting data from our div that contains the HTNL table
            var data_type = 'data:application/vnd.ms-excel';
            var table_div = document.getElementById('espaciado');
            var table_html = table_div.outerHTML.replace(/ /g, '%20');
            a.href = data_type + ', ' + table_html;
            //settings the file name
            a.download = 'exported_table_' + postfix + '.xls';
            //triggering the function
            a.click();
            //just in case, prevent default behaviour
            e.preventDefault();
        });
    </script>

</html>