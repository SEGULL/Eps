<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<script src="../bootstrap/js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap/js/datatables.js"></script>

			
			<br></br>
			<div class="col-md-5">
			<div>				
			</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
<!-- 					<a class="panel-title fa fa-shopping-cart" ></a> -->
					<h2>CLIENTES</h2>
					<a></a> 
						<a class="btn btn-primary" href="../Conexion/salir"> <i class="fa fa-ban fa-fw"></i>Salir</a>
				<a class="btn btn-primary" href="../ConexionAgua/nuevo"> <i class="fa fa-ban fa-fw"></i>Registrar Nuevo  Cliente</a>
				
					</div>
						<br><br><br>		
								 ${seg} ${seg} ${seg} ${seg} ${seg} ${seg} ${seg}		
					<display:table name="${ListaCliente}" id="Cliente" requestURI="/dashboard"  class="table table-bordered">
								<display:column title="# Doc"  property="dni" class="success"/>
								<display:column title="Nombre o Razon Social"  property="nombre" class="success"/>
							<display:column title="" class="success">
							<a href="../../ConexionAgua/${Cliente.id}/Select" class="btn btn-primary"><i  class="fa fa-pencil-square-o"></i>Sel</a>
							</display:column>							
					</display:table>
					
				</div>
				
				
				</div>

			


<br>


<script>
	$('#Cliente').DataTable();
</script>	
 
        