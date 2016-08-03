<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>




<div class="col-lg-10">
<div class="panel panel-default">
 
  <div class="panel-heading">INGRESAR PRESION</div>
  <div class="panel-body">
    <p>Medicion de la presion en las redes de distribucion</p>
  </div>
  <form:form modelAttribute="Tipo" action="guardar" class="form-inline" role="form">

		  <div class="form-group"> 
			<label for="inputPassword" class="col-lg-8 control-label">Punto de Control</label>
		    <div class="col-lg-8">
				<form:select path="puntocontrol.id" cssClass="form-control"
					items="${Punto}" itemLabel="nombrecontrol" itemValue="id" > 
				</form:select> 
		    </div>
		   </div>
		  <br><br>
		  <div class="form-group"> 
			<label for="inputPassword" class="col-lg-8 control-label">Personal</label>
		    <div class="col-lg-8">
				<form:select path="personal.id" cssClass="form-control"
					items="${Personal}" itemLabel="nombre"   itemValue="id"> 
				</form:select> 
		    </div>
		   </div>  
		  
		  <br><br>  
		  <div class="form-group">
		    <label for="inputPassword" class="col-lg-4 control-label">Fecha</label>
		    <div class="col-lg-2">
		      <form:input path="fechamedicion" class="form-control" type="date"
			  	autofocus="autofocus"  required="required" />
							
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="inputPassword" class="col-lg-4 control-label">Hora</label>
		    <div class="col-lg-2">
		      <form:input path="hora" class="form-control" type="time"
			  	autofocus="autofocus"  required="required" />
			  
		    </div>
		  </div>
		  
		<br><br>
		<br><br>
		  <div class="form-group">
		    <label for="inputPassword" class="col-lg-4 control-label">Valor mca</label>
		    <div class="col-lg-2">
		      <form:input path="pvalormac" class="form-control" type="number" placeholder="ingrese valor"
			  	autofocus="autofocus"  required="required" />
			  	
		    </div>
		  </div>
		  <div class="form-group"> 
			<label for="inputPassword" class="col-lg-4 control-label">Equipo</label>
		    <div class="col-lg-2">
				<form:select path="equipos.id" cssClass="form-control"
					items="${Equipo}" itemLabel="nombreequi" itemValue="id" > 
				</form:select> 
		    </div>
		   </div>
		<br><br>
		  <div class="form-group">
		    <label for="inputPassword" class="col-lg-10 control-label">Anotaciones</label>
		    <div class="col-lg-9">
		    <form:textarea path="anotaciones" class="form-control" type="text" rows="5" cols="100" placeholder="Ingresar Anotaciones"
			  	autofocus="autofocus"  required="required" />		
		    </div>
		   </div>
		<!--    style="display: none" -->
		  <div class="form-group" style="display: none" > 
		    <label for="inputPassword" class="col-lg-4 control-label">Tipo</label>
		    <div class="col-lg-2">
		      <form:input path="tipo" class="form-control" value="Presion" type="text"
			  	autofocus="autofocus"  required="required" />
			  
		    </div>
		  </div>
		<br><br>  
		      <center>
					<button type="submit" class="btn btn-primary">Terminar</button>
					<button type="reset" class="btn btn-danger">Cancelar</button>
					<form:hidden path="id" />
			 </center>
  </form:form>
</div>
</div>