<?php 
session_start();
require_once '../conexion/conexion.php';
if ($_SESSION['ident']) {
	echo "";
  #CONSULTA PARA TRAER CATEGORIAS
  $sqlC = "select * from categorias,usuarios where categorias.estado_categoria='defecto' group by categoria";

  $statement = $pdo->query($sqlC);
  $result_categorias = $statement->fetchAll();

  if ($_GET['id']) {
    #CONSULTA PARA TRAER CATEGORIZACION RAMA2
  $sqlC = "select * from categorizacion_rama2,categorias where categorias.estado_categoria='defecto' and categorias.id_categoria=categorizacion_rama2.id_categoria and categorizacion_rama2.id_categoria=$_GET[id]";

  $statement = $pdo->query($sqlC);
  $result_categorias_rama2 = $statement->fetchAll();
  }
}
else
{
	header('location: ../index.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=big5">
    
<title>Categorias</title>
    <link rel="stylesheet" href="../css/reset.css">
    <link rel="icon" type="image/png" href="../img/imgmain/favicon-ilove.png"/>
    <link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
   <link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
    <link rel="stylesheet" href="../css/factura.css">

</head>

<?php 




	
?>



<?php include('menuFreenetCategorias.php');  ?>
<body>

 <div>
      

    <div id="cuerpo">

      <article>

         

          <section class="contenido">
              <div class="actionbar-cont">
                  <h1>Categorias</h1>
                   <a class="espac" href="#"><img src="" alt=""></a>
                  <a class="exportar" id="btnExport" href="#"><img src="../img/factura/download.svg">Exportar</a>
                  <a href="crearFactura.php"> <div class="btn-nuevo"><img style="width:10% ; margin:0 7px; "src="../img/iconta/nueva factura 1 icon.png">Ajuste Categoria</div></a>
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
					<td>categoria</td>
					<td>accion</td>
					<td>accion</td>
					
				</tr>
			
				<?php foreach (@$result_categorias as $cat) {?>
				
					<tr>
						<td id="cod"><?php echo $cat['categoria']; ?></td>						
						<td><a href="index.php?id=<?php echo $cat['id_categoria'];?>">ver</a></td>
						<td><a id="" class="" href="eliminaCategoria.php?id_entrada=<?php echo $cat['id_categoria']; ?>">Eliminar</a></td>

							
					</tr>
				<?php } ?>
			</table>
<br>
<br>
<br>
      <table border="1" width="100%">
        </tr>
      
        <?php 
        if (@$_GET['id']) {
        
        foreach (@$result_categorias_rama2 as $cat) {?>
        
          <tr>
            <td id="cod"><?php echo $cat['titulo_categorizacion_rama2']; ?></td>            
            <td><a href="index.php?id=<?php echo $cat['id_categorizacion_rama2'];?>">ver</a></td>
            <td><a id="" class="" href="eliminaCategoria.php?id_entrada=<?php echo $cat['id_categoria']; ?>">Eliminar</a></td>

              
          </tr>
        <?php } } ?>

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