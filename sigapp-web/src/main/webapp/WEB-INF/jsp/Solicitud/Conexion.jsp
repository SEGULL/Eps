<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>

<center>
<label for="exampleInputEmail1" class="panel-body">CONEXIONES O INSTALACIONES</label>
<br>
<a  class="btn btn-info" href="../Solicitud/${1}/ConexionAgua"><span class="glyphicon glyphicon-star"></span>Conexion de Agua</a>
<%-- <button type="button"  class="btn btn-info" href="<%=request.getContextPath() %>/Solicitud/ConexionAgua"><span class="glyphicon glyphicon-star"></span>Conexion de Agua</button> --%>
<button type="button" class="btn btn-warning"><span class="glyphicon glyphicon-star"></span>Conexion de Alcantarillado</button>
<button type="button" class="btn btn-primary"><span class="glyphicon glyphicon-star"></span>Proforma de Presupesto</button>
<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-star"></span>Mantenimientos de Precios</button>
<br></br><br></br>
<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-star"></span>Factibilida de Servicio</button>
<button type="button" class="btn btn-success"><span class="glyphicon glyphicon-star"></span>Falta de Agua</button>
</center>
