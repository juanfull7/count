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
?> 

<!DOCTYPE html>
<html lang="en">

<head><meta http-equiv="Content-Type" content="text/html; charset=gb18030">

    <title>Nuevo Contacto</title>

<link rel="stylesheet" href="../css/reset.css">
<link rel="stylesheet" href="../css/factura.css">

<link rel="stylesheet" type="text/css" href="../css/bootstrap.css">
<link rel="shortcut icon" href="../img/imgmain/favicon-ilove.png" type="image/x-icon">
<link href="https://fonts.googleapis.com/css?family=Roboto:100i,300,400,400i,700,900i" rel="stylesheet">
<link href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css" rel="Stylesheet"></link>
    <script type="text/javascript" src="../js/jquery.js"></script>

<script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js" ></script>
<script type="text/javascript" src="../ingresos/factu/crearFactura.js"></script>
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
    
    <?php include('menuFreenetContactos.php');  ?>

  
</head>

<body role="document">

    <div id="cuerpo">

      <article>

        

          <section class="contenido">
              <div class="actionbar-cont">
                  <h1>Nuevo Contacto</h1>
                  
              </div>

              <div class="vacio"></div>
             
          </section>

          <section class="cont-tab">
              
              <div class="" role="main">
            
    
    <div id="cuerpoFactura">
        <div class="cont-factura">
            <div class="cont-factura2">
                <form action="registrarContacto.php" method="post">
                    	 <div id="head-in">
	                            <div  id="head-in-left">
	                                <div>
	                                <label id="labelNumeracion" for="nombreCont" class="labelTex" >Nombre<span class="req">*</span></label>
	                                <input type="text"  id="nombreCont"  class="labelInp" name="nombreCont" value="" >
	                                </div>
	                                <div>
	                                <label id="labelNumero" for="nit" class="labelTex" >Nit</label>
	                                <input type="text" id="nit" class="labelInp" name="nit" value="" >
	                                </div>
	                                <div>
	                                <label class="labelTex" for="direccionCont">Dirección<span class="req">*</span></label>
	                                <input type= 'text' class="labelInp" id="direccionCont" name="direccionCont">
	                                </div>
	                                <div>
	                                <label class="labelTex" for="ciudadCont">Ciudad<span class="req">*</span></label>
	                                <input type= 'text' class="labelInp" id="ciudadCont" name="ciudadCont" placeholder="">
	                                </div>
	                                <div>
	                                <label class="labelTex" for="emailCont">Correo Electronico</label>
	                                <input type= 'text' class="labelInp" id="emailCont" name="emailCont">
		                        </div> 
		                        <div>
	                                <label id="labelNumeracion" for="celularCont" class="labelTex">Celular<span class="req">*</span></label>
	                                <input type="text"  id="celularCont"  class="labelInp" name="celularCont" value="" >
	                                </div>
	                                <div>
	                                <label id="labelNumero" for="telefCont" class="labelTex" >Telefono</label>
	                                <input type="text" id="telefCont" class="labelInp" name="telefCont" value="" >
	                                </div>
	                                <div>
	                                <label class="labelTex" for="faxCont">Fax<span class="req">*</span></label>
	                                <input type= 'text' class="labelInp" id="faxCont" name="faxCont">
	                                </div>   
	                            </div>
	                            
	                          <div id="head-in-right">
	                            	<div>
	                                <label class="labelTex" for="vendedor">Vendedor</label>
	                                <select class="labelInp" id="vendedor"name="vendedor">
	                                <option>Selecione</option></select>
	                            	</div>
	                            	<div>
	                                <label class="labelTex" for="listPrecios">Lista de Precios</label>
	                                <select class="labelInp" id="listPrecios"name="listPrecios">
	                                <option>Selecione</option></select>
	                            	</div>
	                                
	                                
	                                <div>     
		                                <label for="plazo" class="labelTex" style="width:100px;margin-right:13px;" unselectable="on">Plazo<span class="req">*</span></label>
		                                <select id="plazo" name="plazo" class="labelInp">
		                                    <option value="Contado">Contado</option>
		                                    <option value="8 dias">8 dias</option>
		                                    <option value="15 dias">15 dias</option>
		                                    <option value="30 dias">30 dias</option>
		                                </select>
		                        </div>
		                     	<div>
	                                <label class="labelTex" for="observaciones">Observaciones</label>
	                                <textarea  id="observaciones"  rows="3" name="observaciones"></textarea>
	                            	</div>
	                            
	                            	<div>
	                                <label class="labelTex" for="tipoCliente">Cliente</label>
	                                <input type="checkbox" id="tipoCliente"  rows="3" name="tipoCliente">
	                            	</div>
	                            
	                            	<div>
	                                <label class="labelTex" for="tipoProveedor">Proveedor</label>
	                                <input  type="checkbox" id="tipoProveedor"  rows="3" name="tipoProveedor">
	                            	</div>
	                            
	                            	<div>
	                                <label class="labelTex" for="incluirEstadoCuenta">Incluir estado de cuenta</label>
	                                <input  type="checkbox" id="incluirEstadoCuenta"  rows="3" name="incluirEstadoCuenta">
	                            	</div>
	                         </div>
      			</div>
                                
                                   
	                                

                    <br>
                    <br>
                    <br>
                    <br>

                    <div class="form-group">
                    
                  
                                  
	                  <table class='table table-bordered table-hover' id="tablaItems">
	                    <tr>
	                      <th>Nombre</th>
	                      <th>Apellido</th>
	                      <th>Correo</th>
	                      <th>telefono</th>
	                      <th>Celular</th>
	                      <th>Descripcion</th>
	                      <th>Enviar Notificaciones</th>
	                     
	                      <th>Del</th>
	                    </tr>
	                  
	                     <tr>
	                      
	                      <td><input type="text" id="item1" class="form-control" name="item1" value=""placeholder="buscar Item" ></td>
	                      <td><input type="text" id="referencia1" class="form-control" name="referencia1"  value="" placeholder="referencia"></td>
	                      <td><input type="text" id="precio1" class="form-control" name="precio1"  value="" placeholder="precio"></td>
	                      <td><input type="text" id="descuento1" class="form-control" name="descuento1" value="" placeholder="%"></td>
	                      <td><input type="text" id="impuesto1" class="form-control" name="impuesto1"  value="" placeholder="impuesto"></td>
	                      <td><input type="text" id="descripcion1" class="form-control" name="descripcion1"  value="" placeholder="descripcion"></td>
	                    <td><input type="checkbox" id="descripcion1" class="form-control" name="descripcion1"  value=""></td>
	
	                      <td class="text-center"><div class='btn btn-danger'>X</div></td>
	                      
	                    </tr>
	                  
	                    
	                  </table>
                    
 			<div class='btn btn-success ' style="background:#00afef;font-size:1.2em;border:1px solid white" id="btnNuevoItem">Asociar Psersona</div>
                </div>   
                	                                                                
                    <button type="submit" style="background:#00afef;font-size:1.3em;border:1px solid black" class="btn btn-md btn-success pull-right">Crear</button><br><br>
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
