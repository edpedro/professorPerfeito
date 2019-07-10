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

</head>
<body class="home">
	<!--menu --->
	<c:import url="menu/menuSess�o.jsp" />

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
				<div class="user-dashboard">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-4 col-sm-7 col-xs-10 gutter">
								<div class="sales s1" style="background-color: #5fcf80;">
									<div>
										<h3>Criar An�ncio</h3>
									</div>
									<a href="<%=request.getContextPath()%>/tela/anuncios"><button
											class="btn btn-success">Criar</button></a>
								</div>
							</div>
							<c:forEach var="curso" items="${listaCurso}">
								<div class="col-md-10 col-sm-7 col-xs-10 gutter">
									<div class="sales">
										<h2>An�ncio</h2>
										<div class="circle1 ">
											<img
												src="<%=request.getContextPath()%>/resources/img1/${curso.professor.imagem}">
										</div>
										<div class="col-xs-12">
											<h5 style="text-align: center;" id="limit">${curso.titulo}.</h5>
										</div>
										<a href="edit?idAnuncio=${curso.idcurso}"><button
												class="btn btn-success">Editar</button></a>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="anuncios" items="${listaAnuncios}">
								<div class="col-md-10 col-sm-7 col-xs-10 gutter">
									<div class="sales">
										<h2>An�ncios</h2>
										<div class="circle1">
											<img
												src="<%=request.getContextPath()%>/resources/img1/${anuncios.professor.imagem}">
										</div>
										<div class="divider">
											<h5 style="text-align: center;" id="limit">${anuncios.titulo}.</h5>
										</div>
										<a href="edit?idAnuncio=${curso.idcurso}"><button
												class="btn btn-success">Editar</button></a>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>