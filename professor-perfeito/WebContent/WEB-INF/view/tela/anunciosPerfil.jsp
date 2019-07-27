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
	<c:import url="menu/menuSessão.jsp" />

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
			<<c:if test="${not empty alunoPainel}">
				<c:import url="menu/menuPainelA.jsp" />
			</c:if>
			<c:if test="${not empty professorPainel}">
				<c:import url="menu/menuPainelP.jsp" />
			</c:if>

			<div class="col-md-10 col-sm-11 display-table-cell v-align">
				<!--<button type="button" class="slide-toggle">Slide Toggle</button> -->
				<c:import url="menu/menuFoto.jsp" />
				<div class="user-dashboard">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-4 col-sm-7 col-xs-10 gutter">
								<div class="sales s1" style="background-color: #5fcf80;">
									<div>
										<h3>Criar Anúncio</h3>
									</div>
									<c:choose>
										<c:when test="${quantidadeAnuncios >= 3}">

											<button class="btn btn-danger">Limite excedido</button>
										</c:when>
										<c:otherwise>
											<a href="<%=request.getContextPath()%>/tela/anuncios"><button
													class="btn btn-success">Criar</button></a>


										</c:otherwise>
									</c:choose>
								</div>
							</div>
							<c:forEach var="curso" items="${listaCurso}">
								<div class="col-md-10 col-sm-7 col-xs-10 gutter">
									<div class="sales">
										<h2>Anúncio</h2>
										<div class="circle1 ">
											<img
												src="<%=request.getContextPath()%>/resources/img1/${curso.usuario.imagem}">
										</div>
										<div class="col-xs-12">
											<h5 style="text-align: center;" id="limit">${curso.titulo}...</h5>
										</div>
										<a href="edit?idAnuncio=${curso.idcurso}"><button
												class="btn btn-success" style="margin-left: 10px;">Editar</button></a>
												<a href="exibir?id=${curso.idcurso}"><button
											class="btn btn-primary">Exibir</button></a>
									</div>
								</div>
							</c:forEach>
							<c:forEach var="anuncios" items="${listaAnuncios}">
								<div class="col-md-10 col-sm-7 col-xs-10 gutter">
									<div class="sales">
										<h2>Anúncios</h2>
										<div class="circle1">
											<img
												src="<%=request.getContextPath()%>/resources/img1/${anuncios.usuario.imagem}">
										</div>
										<div class="divider">
											<h5 style="text-align: center;" id="limit">${anuncios.titulo}.</h5>
										</div>
										<a href="edit?idAnuncio=${anuncios.idanuncios}"><button
												class="btn btn-success" style="margin-left: 10px;">Editar</button></a> - <a href="#"
											data-toggle="modal" data-target="#exampleModal"><button
												class="btn btn-danger" style="margin-left: 10px;">Remover</button></a>
												<a href="exibir?id=${anuncios.idanuncios}"><button
											class="btn btn-primary">Exibir</button></a>
												
									</div>
								</div>

								<!-- Modal -->
								<div class="modal fade" id="exampleModal" tabindex="-1"
									role="dialog" aria-labelledby="exampleModalLabel"
									aria-hidden="true">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<h5 class="modal-title" id="exampleModalLabel">DELETAR
													ANUNCIOS</h5>
												<button type="button" class="close" data-dismiss="modal"
													aria-label="Close">
													<span aria-hidden="true">&times;</span>
												</button>
											</div>
											<div class="modal-body">Deseja deletar o anuncio</div>
											<div class="modal-footer">
												<button type="button" class="btn btn-success"
													data-dismiss="modal">Fecha</button>
												<a href="delete?idDelete=${anuncios.idanuncios}"><button
														type="button" class="btn btn-danger">Deletar</button></a>
											</div>
										</div>
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