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
	href="<%=request.getContextPath()%>/resources/bootstrap/css/estilos1.css">
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
	<!-- Menu logado-->
	<c:choose>
		<c:when test="${not empty alunoLogado}">
			<c:import url="menu/menuA.jsp" />
		</c:when>
		<c:when test="${not empty professorLogado}">
			<c:import url="menu/menuP.jsp" />

		</c:when>
		<c:otherwise>

			<c:import url="menu/menu.jsp" />

		</c:otherwise>
	</c:choose>
	<div class="container-fluid selec1">	
		<div class="container st3">
			<div class="user-dashboard">
			
				<div class="row">				
					<div class="col-md-12 col-sm-7 col-xs-12 gutter">
						<div class="sales">
							<div class="col-md-4" style="width:230px;">
								<div class="circle3">
									<img src="<%=request.getContextPath()%>/resources/img1/${ExibirProfessor.professor.imagem}"
									class="img-thumbnail img-circle"
									style="background-color: #aaa; width: 100%; height: 200px; overflow: hidden; position: relative; bottom:20px;">
								</div>
							</div>
							<div class="col-md-8">
								<div class="divider">
									<a href="#"><h1 style="text-align: center; margin: -20px;">${ExibirProfessor.professor.nome}</h1></a>
									<h4 style="text-align: center;">${ExibirProfessor.professor.cidade} - ${ExibirProfessor.professor.estado}</h4>
									<h5 style="text-align: center;">${ExibirProfessor.competencia}</h5>
								</div>
								<div id="btn6">
									<h1 style="text-align: center; margin-left: 230px;">R$${ExibirProfessor.valorHora}/h</h1>
									<button class="btn btn-success" type="button">
										Solicitar Aula</button>
								</div>
							</div>
						</div>

					</div>
					<div class="col-md-3 col-sm-7 col-xs-12 gutter">
						<div class="sales s1">
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Níveis</h2>
							</div>
							<div class="col-md-12">
								<form action="">
									<div class="form-group form-check">
										<label class="form-check-label">
											<button class="btn btn-success btn-block" type="button" >Todos</button>
										</label>
									</div>
								</form>
							</div>
						</div>
						<div class="sales s1">
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Aulas dadas</h2>
							</div>
							<div class="col-md-12">
								<form action="">
									<label class="form-check-label">
										<button class="btn btn-success" type="button">${ExibirProfessor.ministra}</button>
									</label>
									
								</form>
							</div>
						</div>
						<div class="sales s1">
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Matérias ensinadas</h2>
							</div>
							<div class="col-md-12">
								<form action="">
									<label class="form-check-label">
										<button class="btn btn-success " type="button">${ExibirProfessor.materia.nome_materia}</button>
									</label> <label class="form-check-label">
										<button class="btn btn-success " type="button">${ExibirProfessor.subMateria}</button>
									</label> <label class="form-check-label">
										<button class="btn btn-success " type="button">${ExibirProfessor.competencia}</button>
									</label> 
								</form>
							</div>
						</div>
						<div class="sales s1">
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Aulas serão</h2>
							</div>
							<div class="col-md-12">
								<form action="">
								<c:if test="${not empty ExibirProfessor.aulasCasa}"> 
									<label class="form-check-label">
										<button class="btn btn-success " type="button">Casa do Professor</button>
									</label>
									</c:if> 
									<c:if test="${not empty ExibirProfessor.aulasWebcam}"> 
									<label class="form-check-label">
										<button class="btn btn-success " type="button">Por webcam</button>
									</label>
									</c:if>
									<c:if test="${not empty ExibirProfessor.aulasAluno}"> 
									<label class="form-check-label">
										<button class="btn btn-success " type="button">Casa do Aluno</button>
									</label>
									</c:if>

								</form>
							</div>
						</div>
					</div>
					<div class="col-md-9 col-sm-7 col-xs-12 gutter">
						<div class="sales s1">
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Formação</h2>
							</div>
							<div class="col-md-12">
								<h3>${ExibirProfessor.formacao}</h3>
							</div>
						</div>
						<div class="sales s1">
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Apresentação</h2>
							</div>
							<div class="col-md-12">
								<p>${ExibirProfessor.apresentacao}
								<p>
							</div>
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Metodologia</h2>
							</div>
							<div class="col-md-12">
								<p>${ExibirProfessor.metodologia}<p>
							</div>
						</div>
					</div>
				</div>			
			</div>
		</div>
	</div>
	<!-- Modal Login-->
	<c:import url="login.jsp" />
	<!-- Modal Cadastro-->
	<c:import url="cadastro.jsp" />
</body>
</html>