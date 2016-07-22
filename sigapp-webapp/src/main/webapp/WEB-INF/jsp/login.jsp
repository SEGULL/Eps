<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<%@page contentType="text/html;charset=UTF-8"%>
<%@page pageEncoding="UTF-8"%>
<%@ page session="false" %>
<jsp:useBean id="now" class="java.util.Date" scope="request" />
<!DOCTYPE html>  
<head>
	<meta charset="utf-8">
	<script type="text/javascript" src="<%=request.getContextPath()%>/index/js/libs/jquery.min.js"></script>

	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/css/login.css">
	<link rel="stylesheet" type="text/css" href="bootstrap/fonts/css/font-awesome.css">

	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<title>SISTEMA DE SIGWEB</title>
	
	<!-- !CSS -->
	<link rel="stylesheet" href="<%=request.getContextPath()%>/index/css/isr-screen.css?v=1">
	<!-- hide carousel immediately to prevent FOUC -->
	<script type="text/javascript">
		document.write('<style type="text/css">.container-carousel{opacity:0; filter: alpha(opacity=0);}</style>');
	</script>

	<script src="<%=request.getContextPath()%>/index/js/libs/modernizr.min.js"></script>
	

</head>
<!-- !Body -->
<body class="login">

		  <div id="container">
          
            <div id="loginbox">            
                <form id="loginform" action="<%=request.getContextPath() %>/j_spring_security_check" method="post" AUTOCOMPLETE="off">
    				    <div class="footer-login">
                       			<div class="pull-center text">
                            	SIGWEB 
                        		</div>
                        
                    	</div>
                    <div class="input-group input-sm">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input class="form-control" id="username" placeholder="Usuario" type="text" name="j_username" id="username">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input class="form-control" id="password" placeholder="Contraseña" type="password" name="j_password" >
                        <input type="text" id="passwordPlaceholder" class="textInput" placeholder="Password" style="display: none;"/>
                    </div>
                    <div class="form-actions clearfix">                      
                        <button class="btn btn-block btn-primary btn-default" value="Ingresar" type="submit">
                         <i class="fa  fa-sign-in"></i>
                       Ingresar</button>
                    </div>
                    <div class="footer-login">
                        <div class="pull-center text">
                            SF-UPeU
                        </div>
                        
                    </div>
                </form>
                </div>
        </div>

</body>


