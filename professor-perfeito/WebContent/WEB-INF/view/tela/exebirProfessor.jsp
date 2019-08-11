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
	<c:choose>
		<c:when test="${not empty usuarioLogado}">
			<c:import url="menu/menuUsuario.jsp" />

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
							<div class="col-md-4" style="width: 230px;">
								<div class="circle3">
									<img
										src="<%=request.getContextPath()%>/resources/img1/${Exibir.usuario.imagem}"
										class="img-thumbnail img-circle"
										style="background-color: #aaa; width: 100%; height: 200px; overflow: hidden; position: relative; bottom: 20px;">
								</div>
							</div>
							<div class="col-md-8">
								<div class="divider">
									<a href="#"><h1 style="text-align: center; margin: -20px;">${Exibir.usuario.nome}</h1></a>
									<h4 style="text-align: center;">${Exibir.usuario.cidade}-
										${Exibir.usuario.estado}</h4>
									<h5 style="text-align: center;">${Exibir.competencia}</h5>
								</div>
								<div id="btn6">
									<h1 style="text-align: center; margin-left: 230px;">R$${Exibir.valorHora}/h</h1>

									<c:choose>
										<c:when test="${not empty usuarioLogado}">
											<button class="btn btn-success" type="button"
												data-toggle="modal" data-target="#exampleModal">
												Solicitar Aula</button>

										</c:when>
										<c:otherwise>
											<button class="btn btn-success" type="button"
												data-target="#cadastro" data-toggle="modal">
												Solicitar Aula</button>
										</c:otherwise>
									</c:choose>
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
											<button class="btn btn-success btn-block" type="button">Todos</button>
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
										<button class="btn btn-success" type="button">${Exibir.ministra}</button>
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
										<button class="btn btn-success " type="button">${Exibir.materia.nome_materia}</button>
									</label> <label class="form-check-label">
										<button class="btn btn-success " type="button">${Exibir.subMateria}</button>
									</label> <label class="form-check-label">
										<button class="btn btn-success " type="button">${Exibir.competencia}</button>
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
									<c:if test="${not empty Exibir.aulasCasa}">
										<label class="form-check-label">
											<button class="btn btn-success " type="button">Casa
												do Professor</button>
										</label>
									</c:if>
									<c:if test="${not empty Exibir.aulasWebcam}">
										<label class="form-check-label">
											<button class="btn btn-success " type="button">Por
												webcam</button>
										</label>
									</c:if>
									<c:if test="${not empty Exibir.aulasAluno}">
										<label class="form-check-label">
											<button class="btn btn-success " type="button">Casa
												do Aluno</button>
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
								<h3>${Exibir.formacao}</h3>
							</div>
						</div>
						<div class="sales s1">
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Apresentação</h2>
							</div>
							<div class="col-md-12">
								<p>${Exibir.apresentacao}
								<p>
							</div>
							<div class="col-md-12">
								<h2 style="margin-bottom: 10px;">Metodologia</h2>
							</div>
							<div class="col-md-12">
								<p>${Exibir.metodologia}
								<p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  modal pedido de aula -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModal" aria-hidden="true"
		style="margin-top: -20%">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModal">Solicitar Aula</h5>
				</div>
				<form action="savePedido" method="post">

					<input type="hidden" id="curso" name="curso" value="${Exibir.idcurso}"> 
						<input type="hidden" id="usuario" name="usuario" value="${usuario_idusuario}">
					<div class="modal-body">
						<h5>Qual matéria deseja aprender?</h5>
						<div class="radio-btn-group" style="margin-left: -1%;">
							<div class="radio" style="width: -50%;">
								<input type="radio" name="materia" value="${Exibir.subMateria}"
									checked="checked" id="click_me" /> <label for="click_me">${Exibir.materia.nome_materia}</label>
							</div>
							<div class="radio">
								<input type="radio" name="materia" value="${Exibir.subMateria}" id="or_me" /> <label
									for="or_me">${Exibir.subMateria}</label>
							</div>
							<div class="radio">
								<input type="radio" name="materia" value="${Exibir.competencia}"
									id="or_me1" /> <label for="or_me1">${Exibir.competencia}</label>
							</div>
						</div>
					</div>
					<div class="modal-body" style="margin-top: -11%">
						<h5>Como deseja ter suas aulas?</h5>
						<div class="radio-btn-group" style="margin-left: -1%;">
												
							<div class="radio">
								<input type="radio" name="onde_aulas" value="presencial"
									checked="checked" id="click_pre" /> <label for="click_pre">PRESENCIAL</label>
							</div>						
							<div class="radio">
								<input type="radio" name="onde_aulas" value="em grupo"
									id="or_gru" /> <label for="or_gru">EM GRUPO</label>
							</div>
						</div>
					</div>
					<div class="modal-body" style="margin-top: -11%">
						<h5>Para quem é esta aula?</h5>
						<div class="radio-btn-group" style="margin-left: -1%;">
							<div class="radio">
								<input type="radio" name="nome_estudade" value="A"
									checked="checked" id="click_PRA" /> <label for="click_PRA">PRA
									MIM</label>
							</div>
							<div class="radio">
								<input type="radio" name="nome_estudade" id="or_OUTRO"
									for="outro" value="Outra pessoa"/> <label for="or_OUTRO">OUTRA PESSOA</label> 
									<input type="text" name="nome_estudade" value=""
									placeholder="Outra pessoa" style="width: 200px;" />
							</div>
						</div>
					</div>
					<div class="modal-body" style="margin-top: -11%">
						<h5>Onde será a aula?</h5>
						<div class="radio-btn-group" style="margin-left: -1%;">
							<c:if test="${not empty Exibir.aulasAluno}">
							<div class="radio">
								<input type="radio" name="ministrar" value="CASA DO ALUNO"
									checked="checked" id="click_ALU" /> <label for="click_ALU">CASA
									DO ALUNO</label>
							</div>
							</c:if>
							<c:if test="${not empty Exibir.aulasWebcam}">
							<div class="radio">
								<input type="radio" name="ministrar" value="WEBCAM" id="or_WEB" />
								<label for="or_WEB">WEBCAM</label>
							</div>
							</c:if>
							<c:if test="${not empty Exibir.aulasCasa}">
							<div class="radio">
								<input type="radio" name="ministrar" value="CASA DO PROFESSOR"
									id="or_PROF" /> <label for="or_PROF">CASA DO PROFESSOR</label>
							</div>
							</c:if>
						</div>
					</div>
					<div class="modal-body" style="margin-top: -11%">
						<h5>Data da primeira aula?</h5>
						<div class="radio-btn-group" style="margin-left: -1%;">
							<div class="radio">
								<input type="radio" name="data_inicial" value="MAIS RAPIDO"
									checked="checked" id="click_RAPIDO" /> <label
									for="click_RAPIDO">MAIS RAPIDO</label>
							</div>
							<div class="radio">
								<input type="radio" name="data_inicial" id="or_DATA" value="PROPOR DATA" /> <label
									for="or_DATA">PROPOR UMA DATA</label><input type="date"
									name="data_inicial" style="width: 200px;" />
							</div>
						</div>
					</div>
					<div class="modal-body" style="margin-top: -11%">
						<h5>Seus dados de contato?</h5>
						<div class="radio-btn-group" style="margin-left: -1%;">
							<div class="radio">
								<input type="text" name="endereco"
									placeholder="ENDEREÇO COMPLETO" value="" style="width: 350px;" />

							</div>
							<div class="radio">
								<input type="text" name="contato" value=""
									placeholder="TELEFONE PARA CONTATO" style="width: 200px;" />
							</div>
						</div>
					</div>
					<div class="modal-body" style="margin-top: -11%">
						<h5>Conte a <strong>${Exibir.usuario.nome}</strong> o que você deseja aprender em suas
							aulas ?</h5>
						<div class="radio-btn-group" style="margin-left: -1%;">
							<div class="radio">
								<textarea type="text" name="comentario"
									placeholder="Escreva a ${Exibir.usuario.nome}" value=""
									style="width: 350px; height: 100px;"></textarea>

							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Fecha</button>
						<button type="submit" class="btn btn-success">Solicitar</button>
					</div>
				</form>


			</div>
		</div>
	</div>

	<!-- Modal Login-->
	<c:import url="login.jsp" />
	<!-- Modal Cadastro-->
	<c:import url="cadastro.jsp" />
</body>
</html>