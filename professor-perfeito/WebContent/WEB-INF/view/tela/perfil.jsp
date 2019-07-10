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
	<c:import url="menu/menuSess�o.jsp" />
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
			<c:import url="menu/menuPainel.jsp" />


			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<!--<button type="button" class="slide-toggle">Slide Toggle</button> -->
				<c:choose>
					<c:when test="${not empty alunoLogado}">
						<c:import url="menu/menuFotoAlun.jsp" />
					</c:when>
					<c:when test="${not empty professorLogado}">
						<c:import url="menu/menuFotoProf.jsp" />
					</c:when>
				</c:choose>
				<c:forEach var="curso" items="${listaCurso}">
					<div class="user-dashboard">
						<div class="row">

							<div class="col-md-5 col-sm-5 col-xs-12 gutter" id="teste">

								<div class="sales">
									<div class="circle">
										<img
											src="<%=request.getContextPath()%>/resources/img1/${curso.professor.imagem}">
									</div>
									<div class="divider">
										<h3 style="text-align: center;">${curso.materia.nome_materia}</h3>
										<h5 style="text-align: center;">${curso.competencia}</h5>
										<h3 style="text-align: center;">R$${curso.valorHora}/h</h3>
									</div>
								</div>

							</div>

							<div class="col-md-7 col-sm-7 col-xs-12 gutter">
								<div class="sales s1">
									<div class="col-md-12">
										<h2>Pedidos de aulas</h2>

									</div>
									<div class="col-md-12">
										<h5>1 - Fernando</h5>
									</div>
									<button class="btn btn-success" type="button">Mais</button>
								</div>
							</div>
							<div class="col-md-7 col-sm-7 col-xs-12 gutter">
								<div class="sales s1">
									<div class="col-md-12">
										<h2>Turmas</h2>
									</div>
									<div class="col-md-12">
										<h5>1 - Grupo</h5>
									</div>
									<button class="btn btn-success" type="button">Mais</button>
								</div>
								<div class="sales">
									<h2>An�ncios</h2>
									<div class="circle1">
										<img
											src="<%=request.getContextPath()%>/resources/img1/${curso.professor.imagem}">
									</div>
									<div class="divider">
										<h5 style="text-align: center;" id="limit">${curso.titulo}.</h5>
									</div>
									<a href="edit?idAnuncio=${curso.idcurso}"><button
											class="btn btn-success">Editar</button></a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>

	</div>

</body>
</html>