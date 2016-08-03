<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<center>
<div class="col-md-5" style="background-color: aqua;"  >
<!-- style="background-color: aqua;" -->
<div class="panel-body">
  <div class="panel-heading" style="background-color:gray;">FORMULARIO DE CONEXION A AGUA</div>
  <div class="panel-body">
   <label for="exampleInputEmail1"> Informacion *</label>
		
<table style="border: 1">
		<caption>Datos Cliente</caption>
					<tr>
				<td>Nombre o Razon Social<td>
				<td>:</td>
				<td>${Cliente.nombre}<td>
				<td>${Cliente.apellidos}<td>
			</tr>
			<tr>
				<td>Direcion del Cliente<td>
				<td>:</td>
				<td>${Cliente.direccion}<td>
			</tr>
			<tr>
				<td>Numero Doc<td>
				<td>:</td>
				<td>${Cliente.dni}<td>
			</tr>
</table>
  </div>
 
  <ul class="list-group">
  
  <form:form modelAttribute="Solicitud" action="Guardar" role="form">

			<div class="form-group">
				<label for="exampleInputEmail1"> Fecha Solicitada *</label>
				<form:input path="fechasol" class="form-control" placeholder="Fecha"
 					autofocus="autofocus" type="date" required="required"  /> 
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"> Decripcion de la solicitud *</label>
				<form:textarea path="direccionservicio" class="form-control" placeholder="Ingrese descripcion de la solicitud"
 					autofocus="autofocus" required="required"  /> 
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1"> Descripcion de direcion del servicio *</label>
				<form:textarea path="descripcion" class="form-control" placeholder="Ingrese descripcion de la direccion"
 					autofocus="autofocus" required="required"  /> 
			</div>
			<div class="form-group" style="display:none">
					<label for="exampleInputEmail1" >Cliente *</label> 
					<form:select path="cliente.id" cssClass="form-control"
					items="${cliente}" itemLabel="nombre" itemValue="id"> 
					</form:select> 
			</div>
			<div class="form-group" >
					<label for="exampleInputEmail1" >sub *</label> 
					<form:input path="subservios.id" class="form-control" 
 					autofocus="autofocus" value="${seg}" />
			</div>
	
			<center>
			<button type="submit" class="btn btn-d">Confirmar</button>
			<form:hidden path="id" />
			</center>
		</form:form>
  </ul>
  </div>
</div>
  </center>
