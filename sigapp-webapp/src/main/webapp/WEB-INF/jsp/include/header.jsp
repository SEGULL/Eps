<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<c:set var="authentication" value="${sessionScope['SPRING_SECURITY_CONTEXT'].authentication}" />
<c:set var="user" value="${authentication.details}"/>


<nav class="navbar navbar-default" role="navigation">
  <div class="navbar-header">
	 <figure>
	      	<img class="Logo" src="<%=request.getContextPath()%>/bootstrap/img/Eps.png" alt=""/>
	      	<img class="Menu" src="<%=request.getContextPath()%>/bootstrap/img/Menu.PNG" alt=""/>
	 </figure>
  </div>
  <div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav navbar-right">
      <li class="dropdown">
      	<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img  src="<%=request.getContextPath()%>/bootstrap/img/User.png" alt=""/>
        </a>
        <ul class="dropdown-menu">
          <li><a href="<%=request.getContextPath()%>/logout"><i class="fa fa-sign-out pull-right"></i> Inf</a>
          <li><a href="<%=request.getContextPath()%>/logout"><i class="fa fa-sign-out pull-right"></i> Conf</a>
          <li class="divider"></li>
          <li><a href="<%=request.getContextPath()%>/logout"><i class="fa fa-sign-out pull-right"></i> Cerrar</a>
        </ul>
      </li>

    </ul>
  </div>
</nav>

 <div class="col-md-2">

<nav class="navbar navbar-default" role="navigation">

  <ul class="nav nav-pills nav-stacked">
	  <li class="active"><a href="#">EPS-EMPSSAPAL - SIGO</a></li>
	  <li ><a href="#">Mantenimientos</a></li>
	  <li class="active" data-toggle="collapse" data-parent="#p1" href="#pv1">
              <a class="nav-sub-container">SISMAN/MAPRE<b class="caret"></b></a></li>
              <ul class="nav nav-pills nav-stacked collapse" id="pv1">
                <li data-toggle="collapse" data-parent="#p6" href="#pv6">
	              <a class="nav-sub-container">Solicitar Servicios<b class="caret"></b></a></li>
	              <ul class="nav nav-pills nav-stacked collapse" id="pv6">
	                		<li <c:if test="${menuHeader eq 'Solicitud'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Solicitud/Conexion.html"><i class="fa fa-indent"></i> Conexiones</a></li>
			        		<li <c:if test="${menuHeader eq 'Solicitud'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Solicitud/Gasfiteria.html"><i class="fa fa-indent"></i> Gasfiteria</a></li>
					        <li <c:if test="${menuHeader eq 'Solicitud'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Solicitud/Desatoro.html"><i class="fa fa-indent"></i> Desatoro</a></li>
					        <li <c:if test="${menuHeader eq 'Solicitud'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Solicitud/Reparacion.html"><i class="fa fa-indent"></i> Reparacion</a></li>
					        <li <c:if test="${menuHeader eq 'Solicitud'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Solicitud/Limpieza.html"><i class="fa fa-indent"></i> Limpiezas</a></li>
					        <li <c:if test="${menuHeader eq 'Solicitud'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Solicitud/Lectura.html"><i class="fa fa-indent"></i> Lectura Medidores</a></li>
					        <li <c:if test="${menuHeader eq 'Solicitud'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Solicitud/Otros.html"><i class="fa fa-indent"></i> Otros</a></li>
			    </ul>
	            <li><a href="#">Reportes Servicios</a></li>
                <li><a href="#">Mantenimiento de Precios</a></li>
                <li><a href="#">Configuraciones</a></li>
                
              </ul>
      <li class="active" data-toggle="collapse" data-parent="#p1" href="#pv2">
              <a class="nav-sub-container">SISOPER<b class="caret"></b></a></li>
              <ul class="nav nav-pills nav-stacked collapse" id="pv2">
                
                
                <li data-toggle="collapse" data-parent="#p21" href="#pv21">
	              <a class="nav-sub-container">Mediciones<b class="caret"></b></a></li>
	              <ul class="nav nav-pills nav-stacked collapse" id="pv21">
	                		<li <c:if test="${menuHeader eq 'Medicion'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Medicion/Caudal.html"><i class="fa fa-indent"></i> Caudal</a></li>
			      			<li <c:if test="${menuHeader eq 'Medicion'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Medicion/Nivel.html"><i class="fa fa-indent"></i> Nivel</a></li>
			        		<li <c:if test="${menuHeader eq 'Medicion'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Medicion/Presion.html"><i class="fa fa-indent"></i> Precion</a></li>
			        		
			      </ul>
	            <li data-toggle="collapse" data-parent="#p22" href="#pv22">
	              <a class="nav-sub-container">Control de la Planta<b class="caret"></b></a></li>
	              <ul class="nav nav-pills nav-stacked collapse" id="pv22">
	                		<li <c:if test="${menuHeader eq 'ControlPlanta'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/ControlPlanta/Boletin.html"><i class="fa fa-indent"></i> Boletin</a></li>
			      			<li <c:if test="${menuHeader eq 'ControlPlanta'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/ControlPlanta/Filtros.html"><i class="fa fa-indent"></i> Filtros</a></li>
			        		<li <c:if test="${menuHeader eq 'ControlPlanta'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/ControlPlanta/Productos.html"><i class="fa fa-indent"></i> Productos</a></li>
			        		
			      </ul>
			    <li data-toggle="collapse" data-parent="#p23" href="#pv23">
	              <a class="nav-sub-container">Control de Inst. y Energia<b class="caret"></b></a></li>
	              <ul class="nav nav-pills nav-stacked collapse" id="pv23">
	                	<li <c:if test="${menuHeader eq 'InstalacionProduction'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/InstalacionProducion/Producion.html"><i class="fa fa-indent"></i> Inst. Producion</a></li>
			     		<li <c:if test="${menuHeader eq 'EnergiaElectrica'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/EnergiaElectrica/Energia.html"><i class="fa fa-indent"></i> Energia Electrica</a></li>
			   	
			      </ul>
			     <li data-toggle="collapse" data-parent="#p24" href="#pv24">
	              <a class="nav-sub-container">Calidad de Agua<b class="caret"></b></a></li>
	              <ul class="nav nav-pills nav-stacked collapse" id="pv24">
	                	<li <c:if test="${menuHeader eq 'CalidadAgua'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/CalidadAgua/Analisis.html"><i class="fa fa-indent"></i> Analisis</a></li>
			     		<li <c:if test="${menuHeader eq 'CalidadAgua'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/CalidadAgua/RedesDistribucion.html"><i class="fa fa-indent"></i> Redes de Distribucion</a></li>
			   			<li <c:if test="${menuHeader eq 'CalidadAgua'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/CalidadAgua/SectorCalidad.html"><i class="fa fa-indent"></i> Sector de Calidad</a></li>
			      </ul>   
	             <li data-toggle="collapse" data-parent="#p25" href="#pv25">
	              <a class="nav-sub-container">Insumos<b class="caret"></b></a></li>
	              <ul class="nav nav-pills nav-stacked collapse" id="pv25">
	              </ul>   
	             <li data-toggle="collapse" data-parent="#p26" href="#pv26">
	              <a class="nav-sub-container">Reportes<b class="caret"></b></a></li>
	              <ul class="nav nav-pills nav-stacked collapse" id="pv26">
	                	<li <c:if test="${menuHeader eq 'Medicion'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/Medicion/SumarioMediciones.html"><i class="fa fa-indent"></i> Sumario (N,C,P)</a></li>
			     		<li <c:if test="${menuHeader eq 'ReportesSisoper'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/ReportesSisoper/Valvulas.html"><i class="fa fa-indent"></i> Valvulas</a></li>
			   			<li <c:if test="${menuHeader eq 'ReportesSisoper'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/ReportesSisoper/Produccion.html"><i class="fa fa-indent"></i> Producion</a></li>
			    		<li <c:if test="${menuHeader eq 'ReportesSisoper'}"> class="active"</c:if>><a href="<%=request.getContextPath() %>/ReportesSisoper/Energia.html"><i class="fa fa-indent"></i> Energia Electrica</a></li>s
			      </ul>  		
              </ul>
      <li class="active" data-toggle="collapse" data-parent="#p1" href="#pv3">
              <a class="nav-sub-container">SISCAT<b class="caret"></b></a></li>
              <ul class="nav nav-pills nav-stacked collapse" id="pv3">
                <li><a href="#">Report One</a></li>
                <li><a href="#">Report Two</a></li>
              </ul>
   
	</ul>
</nav>
</div>

