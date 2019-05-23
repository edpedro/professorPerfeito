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

</head>
<body>
	<!--menu --->
	<c:import url="menuSessão.jsp" />

	<!--PAINEL-->
	<div class="container-fluid display-table">
		<div class="row display-table-row">
			<div class="col-md-2 col-sm-1 hidden-xs display-table-cell v-align box" id="navigation"  style="width: ">
				<div class="navi"  >
					<ul   style="width: 100%;">
						<li class="active"><a href="perfilProfessor.html"><i 
								class="fa fa-home" aria-hidden="true"></i><span
								class="hidden-xs hidden-sm">Painel de controle</span></a></li>
						<li><a href="anunciosPerfil.html"><i class="fa fa-tasks"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Anúncios</span></a></li>
						<li><a href="valorPerfil.html"><i class="fa fa-bar-chart"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Valor
							</span></a></li>
						<li><a href="turmaPerfil.html"><i class="fa fa-user"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Turma</span></a></li>
						<li><a href="pedidoPerfil.html"><i class="fa fa-calendar"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Pedidos
									de aulas</span></a></li>
						<li><a href="editarPerfil.html"><i class="fa fa-cog"
								aria-hidden="true"></i><span class="hidden-xs hidden-sm">Editar
									conta</span></a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<!--<button type="button" class="slide-toggle">Slide Toggle</button> -->
				<div class="row">
					<header>
						<div class="col-md-7">
							<nav class="navbar-default pull-left">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="offcanvas" data-target="#side-menu"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
								</div>
							</nav>
						</div>
						<div class="col-md-5">
							<div class="header-rightside">
								<ul class="list-inline header-top pull-right">
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown"><img src="img/mentor.jpg"
											alt="user"> <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li>
												<div class="navbar-content">
													<span>Eduardo</span>
													<p class="text-muted small">me@jskrishna.com</p>
													<div class="divider"></div>
													<a href="#" class="btn btn-success vi">Sair</a>
												</div>
											</li>
										</ul></li>
								</ul>
							</div>
						</div>
					</header>
				</div>
				<div class="user-dashboard">
					<div class="row">
						<div class="col-md-5 col-sm-5 col-xs-12 gutter" id="teste">

							<div class="sales">
								<div class="circle">
									<img src="img/mentor.jpg">
								</div>
								<div class="divider">
									<h3 style="text-align: center;">INFORMATICA</h3>
									<h5 style="text-align: center;">Desenvolvedor web</h5>
									<h3 style="text-align: center;">R$40/h</h3>
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
								<h2>Anúncios</h2>
								<div class="circle1">
									<img src="img/mentor.jpg">
								</div>
								<div class="divider">
									<h5 style="text-align: center;">Programação Web para
										Designers - php, js, css e html.</h5>
								</div>
								<button class="btn btn-success" type="button">Editar</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

</body>
</html>