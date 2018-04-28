<div id="main">

	<header>
		<a href="#"><img id="logo" src="img/imgmain/Logo.png"></a>
					
<div id="menu">
        <ul class="menu">
            
            <li><a href="inicio_sistema.php"><img src="img/iconta/inicio icon.png">Inicio</a></li>
            <li><a href="ingresos/facturas.php"><img src="img/iconta/ingresos icon.png">Ingresos</a>
                <ul class="submenu">
                    <li><a href="ingresos/facturas.php">Facturas</a></li>
                    <li><a href="ingresos/crearFactura.php">Nueva Factura</a></li>
                    <li><a href="ingresos/crearFacturaRecu.php">Facturas recurrentes</a></li>
                    <li><a href="ingresos/pagosRecibido.php">Pagos recibidos</a></li>
                    <li><a href="ingresos/notasCredito.php">Notas de credito</a></li>
                    <li><a href="ingresos/crearCotizacion.php">Cotizaciones</a></li>
                    <li><a href="ingresos/remisiones.php">Remisiones</a></li>
                    <li><a href="ingresos/pos.php">POS</a></li>
                    
                </ul>
            </li>
            
           
            <li><a href="../gastos/pagos.php"><img src="img/iconta/gastos icon.png">Gastos</a>
                <ul class="submenu">
                    <li><a href="gastos/pagos.php">Pagos</a></li>
                    <li><a href="gastos/facturaProveedores.php">Facturas de Proveedores</a></li>
                    <li><a href="gastos/pagosRecurrentes.php">Pagos recurrentes</a></li>
                    <li><a href="gastos/notasDebito.php">Notas debito</a></li>
                    <li><a href="gastos/ordenesCompra.php">Ordenes de compra</a></li>
                  
                </ul>
            </li>
              <li><a href="contactos/contactos.php"><img src="img/iconta/contactos icon.png">Contactos</a>
                <ul class="submenu">
                    <li><a href="contactos/contactos.php">Contactos</a></li>
                    <li><a href="contactos/crearContacto.php">Nuevo Contacto</a></li>
                    <li><a href="contactos/clientes.php">Clientes</a></li>
                    <li><a href="contactos/proveedores.php">Proveedores</a></li>
                    
                </ul>
           </li>
           
           <li><a href="inventario/items.php"><img src="img/iconta/inventario icon.png">Inventario</a>
                <ul class="submenu">
                    <li><a href="inventario/items.php">Items de venta</a></li>
                    <li><a href="inventario/valorInventario.php">Valor de Inventario</a></li>
                    <li><a href="inventario/ajusteInventario.php">Ajustes a Inventario</a></li>
                    <li><a href="inventario/gestionItems.php">Gestion de Items</a></li>
                    <li><a href="inventario/listaPrecios.php">Lista de Precios</a></li>
                    <li><a href="inventario/bodega.php">Bodegas</a></li>

                </ul>
            </li>
            
           
            <li><a href="bancos/bancos.php"><img src="img/iconta/banco icon.png">Bancos</a>
           <ul class="submenu">
                    <li><a href="bancos/crearBanco.php">Crear Banco</a></li>
                    <li><a href="bancos/bancos.php">Listar Bancos</a></li>
                                        
                </ul>
           </li>
           
           <li><a href="categorias/categorias.php"><img src="img/iconta/categorias icon.png">Categorias</a>
                <ul class="submenu">
                    <li><a href="categorias/categorias.php">Categorias</a></li>
                    <li><a href="categorias/ajusteNuevaCategoria.php">Ajustes de Categorias</a></li>
                                        
                </ul>
            </li>
            <li><a href="reportes/reportes.php"><img id="irepor" src="img/iconta/reportes icon.png">Reportes</a>
               <ul class="submenu">
                    <li><a href="reportes/reportes.php?ventas=true">Ventas</a></li>
                    <li><a href="reportes/reportes.php?administrativos=true">Administrativos</a></li>
                    <li><a href="reportes/reportes.php?contables=true">Contables</a></li>
                    <li><a href="reportes/reportes.php?paraTrabajar=true">Para Trabajar</a></li>
                    
                </ul>
           </li>
           <li><a href="config/index.php"><img src="img/iconta/configuracion icon.png">Configuracion</a>
                
                <ul class="submenu">

                    <li><a href="config/index.php?facturacion=true">Facturacion</a></li>
                    <li><a href="config/index.php?plantillas=true">Plantillas</a></li>
                    <li><a href="config/index.php?impuestos=true">Impuestos</a></li>
                     <li><a href="config/index.php?empresa=true">Empresa</a></li>
                    <li><a href="config/index.php?notificaciones=true">Notificaciones y correos</a></li>
                    <li><a href="config/index.php?historial=true">Historial</a></li>
                     <li><a href="config/index.php?integracion=true">Integracion con apps</a></li>
                    <li><a href="config/index.php?suscripcion=true">Suscricion - planes</a></li>

                </ul>
           </li>
           
        </ul>
        
   </div>
				
					
	</header>
	<div class="session">Usuario : <?php echo $_SESSION['usuario']; ?><a href="config/close.php"><span class="btn-salir"> Salir </span></div></a>