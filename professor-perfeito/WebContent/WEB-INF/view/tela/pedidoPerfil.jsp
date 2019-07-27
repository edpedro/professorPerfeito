<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<title>Professor Perfeito</title>
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/imagehover.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/estilos.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/estilos2.css">


<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.validate.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/additional-methods.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/bootstrap/js/localization/messages_pt_BR.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.easing.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/custom.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/validacoes.js"></script>

<script type="text/javascript">
	window.setTimeout(function() {
		$(".alert").fadeTo(500, 0).slideUp(500, function() {
			$(this).remove();
		});
	}, 4000);
</script>

</head>
<body class="home">
	<!--menu --->
	<c:import url="menu/menuSessão.jsp" />
	<c:if test="${not empty msg}">
		<div class="alert alert-success" role="alert"
			style="width: 300px; height: 50px;">
			<strong>${msg}</strong>
		</div>
	</c:if>

	<style>
.navi i {
	float: left;
	margin: -20px;
}
</style>
	<!--PAINEL-->
	<div class="container-fluid display-table">
		<div class="row display-table-row">
			<!--MENU PAINEL-->
			<c:if test="${not empty alunoPainel}">
				<c:import url="menu/menuPainelA.jsp" />
			</c:if>
			<c:if test="${not empty professorPainel}">
				<c:import url="menu/menuPainelP.jsp" />
			</c:if>

			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<!--<button type="button" class="slide-toggle">Slide Toggle</button> -->

				<c:import url="menu/menuFoto.jsp" />

				<div class="user-dashboard">
					<div class="row">
						<div class="col-md-8 col-sm-7 col-xs-12 gutter">
							<div class="sales s1">
								<div class="col-md-12">
									<h2>Pedido de aula</h2>
								</div>
								<div class="col-md-12">
									<a href="#"><h4>Fernando</h4></a>
									<h5>Aula Individual</h5>
									<h5>Pe - Recife</h5>
									<h5>81 - 9999-8888</h5>
								</div>
								<button class="btn btn-success" type="button">Confirma
								</button>
							</div>
						</div>
						<div class="col-md-8 col-sm-7 col-xs-12 gutter">
							<div class="sales s1">
								<div class="col-md-12">
									<h2>Pedido de aula</h2>
								</div>
								<div class="col-md-12">
									<a href="#"><h4>Fernando</h4></a>
									<h5>Aula em Grupo</h5>
									<h5>Pe - Recife</h5>
									<h5>81 - 9999-8888</h5>
								</div>
								<button class="btn btn-success" type="button">Confirma
								</button>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


</body>
</html>