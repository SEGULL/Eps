<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<script src="../bootstrap/js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap/js/datatables.js"></script>

			<div>				
				<a class="btn btn-primary" href="../home/dashboard"> <i class="fa fa-ban fa-fw"></i>Salir</a>
				<a class="btn btn-primary" href="../ReporteMediciones/Caudal"> <i class="fa fa-ban fa-fw"></i>Buscar Por Caudal</a>
				<a class="btn btn-primary" href="../ReporteMediciones/Nivel"> <i class="fa fa-ban fa-fw"></i>Buscar Por Nivel</a>
				<a class="btn btn-primary" href="../ReporteMediciones/Presion"> <i class="fa fa-ban fa-fw"></i>Buscar Por Presion</a>
			</div>
			<br>
			<br>
			<div class="col-md-10">
				<div class="panel panel-primary">
					<div class="panel-heading">
					<h2> MEDICIONES</h2>
					</a> 
						
					</div>
						<br>	
										
					<display:table name="${ReporteMediciones}" id="TipoMediciones" requestURI="/dashboard"  class="table table-bordered">
					
								<display:column title="Tipo Medicion"  property="tipo" class="success"/>
								<display:column title="Fecha"  property="fechamedicion" class="success"/>
								<display:column title="Hora"  property="hora" class="success"/>
								<display:column title="Anotaciones"  property="anotaciones" class="success"/>
								<display:column title="Lugar de Prueba"  property="puntocontrol.nombrecontrol" class="success"/>
								<display:column title="Nombre Personal"  property="personal.nombre" class="success"/>
								<display:column title="Apellidos Personal"  property="personal.apellidopat" class="success"/>
								
						<display:column title="" class="success">
							   <a href="../ReporteMediciones/${TipoMediciones.id}/eliminar" class="btn btn-primary"><i  class="fa fa-pencil-square-o"></i>Remover</a>
							   <a href="../ReporteMediciones/${Producto.id}/ver" class="btn btn-primary"><i  class="fa fa-pencil-square-o"></i>Ver. Inf.</a>
							</display:column>						
					</display:table>
					
				</div>
				</div>

			



<br>


<script>
	$('#TipoMediciones').DataTable();
</script>		

