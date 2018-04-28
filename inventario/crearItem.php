<?php 

session_start();
require_once "../conexion/conexion.php";
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
  //   echo $arre_php[$p]. "<br>";
     
      
      }
      
      
       #consulta para tabla item_factura
   $sqlItem = "select * from item_factura";
	$sta = $pdo->prepare($sqlItem);
    
	$sta->execute(array());
    
	$resultItem = $sta->fetchAll();
	foreach($resultItem as $rsItem){
	$idItem = $rsItem['id_item'];
        echo $idItem;
	}

  #consulta para traer item de inventario  
  $item = "select * from usuarios,categorias,categorias_item where usuarios.identificacion=categorias.identificacion_usuario and categorias.id_categoria=categorias_item.id_categoria and categorias.identificacion_usuario='$_SESSION[ident];'";
  $statement = $pdo->query($item);
  $result_items = $statement->fetchAll();

?>

<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=gb18030">

    <title>Nueva Factura</title>

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/factura.css">
<link rel="stylesheet" media="(max-width: 300px)" href="../css/inicio.css">
<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="shortcut icon" href="../img/imgmain/favicon-ilove.png" type="image/x-icon">
<link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
<link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
<script type="text/javascript" src="../js/jquery.js"></script>

<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
<script type="text/javascript" src="factu/crearFactura.js"></script>
<script type="text/javascript">
        $(function Auto(){
            var vector = new Array();
            <?php for($p=0 ; $p< count($arre_php); $p++){?>
            vector.push('<?php echo $arre_php[$p];?>');
            <?php }?>
            console.log(vector);
            
            $("#cliente").autocomplete({
            source: vector
            });
            $('.button').click(function() {
            source : vector// get the id from the hidden input
        });
            console.log(vector);
        }); 
        
       
    </script>
    
<script>
    

      function calcular_total_fila(){
	
	/* Parametros:
	cantidad - entero con la cantidad
	precio - entero con el precio
	inputtotal - nombre del elemento del formulario donde ira el total
	*/
	var pre1 = Number(document.getElementById('precio1').value);
	var des1 = Number(document.getElementById('descuento1').value);
	var imp1 = Number(document.getElementById('impuesto1').value);
	var can1 = Number(document.getElementById('cantidad1').value);
	
	total1 = eval(pre1*can1+imp1+des1);
	$("#total1").val(total1);
	
	$("#totalTotal").val(total1) ;
	
	
  };
  


</script>
  
</head>
  <?php include('menuFreenetItems.php');  ?>
<body role="document">
    <div id="cuerpo">

      <article>

        

          <section class="contenido">
              <div class="actionbar-cont">
                  <h1>Nueva Item de venta</h1>
                  
              </div>

              <div class="vacio"></div>
             
          </section>

          <section class="cont-tab">
              
              
              <div class="" role="main">
    
    <div id="cuerpoFactura">
        <div class="cont-factura">
            <div class="cont-factura2">
                <form action="registrarItem.php" method="post">
                    <div id="head-in">
                            <div  id="head-in-left">
                                <div>
                                <label id="labelNumeracion" for="nombreItem" class="labelTex" unselectable="on">Nombre<span class="req">*</span></label>
                                <input type="text"  id="nombreItem"  class="labelInp" name="nombreItem" value="" >
                                </div>
                                <div>
                                <label id="labelNumero" for="referenciaItem" class="labelTex" style="width:100px;margin-right:13px;" unselectable="on">Referencia</label>
                                <input type="text" id="referenciaItem" class="labelInp" name="referenciaItem" value="" >
                                </div>
                                <div>
                                <label class="labelTex" for="precioVenta">Precio de venta<span class="req">*</span></label>
                                <input type= 'text' class="labelInp" id="precioVenta" name="precioVenta">
                                </div>
                                  
                            </div>
                            
                            <div id="head-in-right">
                            		<div>
                                <label class="labelTex" for="descripcionItem">Descripcion</label>
                                <textarea  id="descripcionItem"  rows="3" name="descripcionItem"></textarea>
                            </div>
                            	
                                <div>
	                                <label  for="impuesto" class="labelTex" style="width:100px;margin-right:13px;" unselectable="on">Impuesto<span class="req">*</span></label>
	                                <input type="text" id="impuesto" class="labelInp" name="impuesto"  value="">
	                         </div>
                                
                                 
	                                
                                    
                            </div>
                        
                        </div>
                        <br>
                    <br> <br>
                    <br>
                        
                        
                     <h4>Item inventariable Existente</h4>   
                     

                        

                    <br>
                    <br>
                    <br>
                    <br>

                    <div class="form-group">
                    
                  
                                  
                  <table class='table table-bordered table-hover' id="tablaItems">
                    <tr>
                      <th>nombre</th>
                      <th>Referencia</th>
                      <th>Precio</th>
                      <th>Descripcion</th>
                      <th>accion</th>
                      <th>accion</th>
                    </tr>
                  
                     <?php 
                     foreach ($result_items as $items) {
                     
                    ?>
                      <tr>
                        <td><?php echo $items['nombre']; ?></td>
                        <td><?php echo $items['referencia']; ?></td>
                        <td><?php echo $items['nombre']; ?></td>
                        <td><?php echo $items['nombre']; ?></td>
                        <td></td>
                        <td></td>
                      </tr>
                    <?php 
                    }
                    ?>
                  
                    
                  </table>
                    

                </div>  
                	                                                              
                    <button type="submit" style="background:#00afef;font-size:1.3em;border:1px solid black" class="btn btn-md btn-success pull-right">Guardar</button><br><br>
                </form>
            </div>
        </div>
    </div>
    

</div> 


          </section>

      </article>

   

    </div>

    <footer>

    </footer>

  </div>



</body>


</html>
