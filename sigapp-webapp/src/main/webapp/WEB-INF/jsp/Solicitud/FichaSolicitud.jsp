<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<div class="col-md-10">
<div class="navbar-header">
	 <figure>
	      	<img class="Logo" src="<%=request.getContextPath()%>/bootstrap/img/Eps.png" alt=""/>
	      	
	 </figure>
  </div>
<div class="panel panel-default">
  <div class="panel-body">
  		
<div class="col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title"><center><button type="button" class="btn btn-primary" onclick="window.print()"> SOLICITUD IMPRESA</button></center>
</h3>
					</div>
					<br>			
				</div>
</div>
<div class="col-md-12">
				<div class="panel panel-primary">
					<br><label for="exampleInputEmail1" class="panel-body">DATOS DEL SERVICIO</label> 
 						
					<div class="panel panel-default">
		<br></br>
		<table>
		    <tr>
				<td>Fecha Solicitada<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.fechasol}<td>
			</tr>
			<tr>
				<td>Servicio de <td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.subservios.nombresub}<td>
			</tr>
			<tr>
				<td>Costo<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.subservios.costosub}<td>
			</tr>
			<tr>
				<td>Tiempo<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.subservios.tiempo}<td>
			</tr>
			<tr>
				<td>Direcion del servicio<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.descripcion}<td>
			</tr>
			<tr>
				<td>Otras Observaciones<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.direccionservicio}<td>
			</tr>
			
		</table>	
 					</div>
					
				</div>
				<div class="panel panel-primary">
					<br><label for="exampleInputEmail1" class="panel-body">DATOS DEL CLIENTE</label> 
 					<div class="panel panel-default">
 					<br></br>
		<table>
			<tr>
				<td>Numero de Documento<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.cliente.dni}<td>
			</tr>
			<tr>
				<td>Nombre o Razon Social<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.cliente.nombre}  ${Solicitud.cliente.apellidos}<td>
			</tr>
			<tr>
				<td>Direccion<td>
				<td>:</td>
				<td><td>
				<td>${Solicitud.cliente.direccion}<td>
			</tr>
		</table>	
 					</div>
					
				</div>
</div> 
</div>
</div>
</div>