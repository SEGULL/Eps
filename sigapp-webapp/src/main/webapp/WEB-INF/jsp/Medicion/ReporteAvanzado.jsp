<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<script src="../bootstrap/js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap/js/datatables.js"></script>


	
<div class="col-lg-10">
<table>
<tr>
<td>${Promedio}<td>
</tr>
</table>
<div class="panel panel-default">
 
  <div class="panel-heading">REPORTE AVANZADO DE MEDICIONES</div>

		  <div class="form-group">
		    <label for="inputPassword" class="col-lg-3 control-label">Promedio </label>
		    <label for="inputPassword" class="col-lg-3 control-label"></label>
		    
					<button type="submit" class="btn btn-primary">Parar Imprimir</button>
		  </div>		 
					<button type="submit" class="btn btn-primary">Salir</button>
</div>
<div class="panel panel-primary">
					
						<br>			
					<display:table name="${ReporteAvanzado}" id="TipoMedicion" requestURI="/dashboard"  class="table table-bordered">
								<display:column title="Tipo Medicion"  property="tipo" class="success"/>
								<display:column title="Fecha"  property="fechamedicion" class="success"/>
								<display:column title="Hora"  property="hora" class="success"/>
								<display:column title="Anotaciones"  property="anotaciones" class="success"/>
								<display:column title="Lugar de Prueba"  property="puntocontrol.nombrecontrol" class="success"/>
								<display:column title="Nombre Personal"  property="personal.nombre" class="success"/>
								<display:column title="Apellidos Personal"  property="personal.apellidopat" class="success"/>
								
											
					</display:table>
					
				</div>
</div>	
			

<script>
	$('#TipoMediciones').DataTable();
</script>		

