<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<script src="../bootstrap/js/jquery-1.11.1.min.js"></script>
<script src="../bootstrap/js/datatables.js"></script>


	
<div class="col-lg-10">
<div class="panel panel-default">
 
  <div class="panel-heading">BUSQUEDA AVANZADA DE MEDICIONES DE CAUDAL</div>

  <form:form modelAttribute="Tipo" action="buscar" class="form-inline" role="form">
		
		  
		  <br><br>  
		  <div class="form-group">
		    <label for="inputPassword" class="col-lg-3 control-label">Fecha Inicio</label>
		    <div class="col-lg-2">
		      <form:input path="fechainicio" class="form-control" type="date"
			  	autofocus="autofocus"  required="required" />	
		    </div>
		  </div>		 
		  <div class="form-group">
		    <label for="inputPassword" class="col-lg-3 control-label">Fecha Final</label>
		    <div class="col-lg-2">
		      <form:input path="fechafin" class="form-control" type="date"
			  	autofocus="autofocus"  required="required" />	
		    </div>
		  </div>
		  <br></br>
		  <div class="form-group"> 
			<label for="inputPassword" class="col-lg-4 control-label">Lugar</label>
		    <div class="col-lg-2">
				<form:select path="puntocontrol.id" cssClass="form-control"
					items="${Punto}" itemLabel="tipocontrol" itemValue="id" > 
				</form:select> 
		    </div>
		   </div>
		<center>
					<button type="submit" class="btn btn-primary">Buscar</button>
					<form:hidden path="id" />
		</center>
  </form:form>
</div>
<div class="panel panel-primary">
					
						<br>	
										
					<display:table name="${ReporteMediciones}" id="TipoMediciones" requestURI="/dashboard"  class="table table-bordered">
					
								<display:column title="Tipo Medicion"  property="tipo" class="success"/>
								<display:column title="Fecha"  property="fechamedicion" class="success"/>
								<display:column title="Hora"  property="hora" class="success"/>
								<display:column title="Equipo"  property="equipos.nombreequi" class="success"/>
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

