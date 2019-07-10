<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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

<script type="text/javascript">
<!--listar sub materia, AJAX E JSON -->
	$(document)
			.ready(
					function() {
						function carregaTabelaJSon() {
							var idMateria = $('#materia').val();
							$
									.post(
											"filter",
											{

												'idMateria' : idMateria

											},
											function(dadosJSON) {

												var linhas = '';
												var qtdItens = 0;

												$(dadosJSON)
														.each(
																function(i) {

																	linhas += "<option value='"+ dadosJSON[i].subMateria + "'>"
																			+ dadosJSON[i].subMateria
																			+ "</option>";
																});

												$('#listarMateria')
														.html(linhas);
											});
						}

						$("#materia").change(function() {
							carregaTabelaJSon();

						});
					});
	window.setTimeout(function() {
		$(".alert").fadeTo(500, 0).slideUp(500, function() {
			$(this).remove();
		});
	}, 4000);
</script>
</head>
<body>

	<!-- Menu -->
	<c:import url="menu/menuSessão.jsp" />

	<div class="container">
		<div class="stepwizard">
			<div class="stepwizard-row setup-panel">
				<div class="stepwizard-step">
					<a href="#step-1" type="button" class="btn btn btn-success"
						disabled="disabled" id="id1">1</a>
					<p>Cursos</p>
				</div>
				<div class="stepwizard-step m2">
					<a href="#step-2" type="button" class="btn btn-default "
						disabled="disabled">2</a>
					<p>aulas</p>
				</div>
				<div class="stepwizard-step m3">
					<a href="#step-3" type="button" class="btn btn-default "
						disabled="disabled">3</a>
					<p>Titulo</p>
				</div>
				<div class="stepwizard-step m4">
					<a href="#step-4" type="button" class="btn btn-default "
						disabled="disabled">4</a>
					<p>sobre você</p>
				</div>
				<div class="stepwizard-step m5">
					<a href="#step-5" type="button" class="btn btn-default "
						disabled="disabled">5</a>
					<p>Valor</p>
				</div>
			</div>
		</div>
		<form action="salvaAnuncios" method="post" role="form" class="form"
			id="cursoFormulario" name="cursoFormulario">
			
			
			
			<input type="hidden" id="professor" name="professor" value="${professor}">
			
			
			
			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Você deseja ensinar?</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="materia">Materia</label> <select
										class="form-control" id="materia" name="materia" id="materia">
										<option value="">Materia</option>
										<c:forEach items="${listaMateria}" var="obj">
											<option value="${obj.idmateria}"
												<c:if test="${obj.idmateria eq subMateria.materia_materia}">selected="selected"</c:if>>
												${obj.nome_materia}</option>
										</c:forEach>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label">Adicione outras
										competências</label> <input maxlength="200" type="text"
										name="competencia" 
										class="form-control" id="competencia"
										placeholder="Adicione outras competências" />							
																		
								</div>

							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="listarMateria">Todas as matérias Específica</label>
									<select class="form-control" id="listarMateria"
										name="subMateria">
										<option value="">Materia Específica</option>
									</select>
								</div>
							</div>
						</div>
						<button class="btn btn-success nextBtn btn-lg pull-right"
							type="button">Avançar</button>
					</div>
				</div>
			</div>
			<div class="row setup-content" id="step-2">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Como você quer ministrar</h3>
						<div class="col-md-4">
							<div class="form-group">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="ministra" name="ministra"
										class="custom-control-input" value="inividual"> <label
										class="custom-control-label" for="customRadioInline1">Aula
										individual</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radio" id="ministra" name="ministra"
										class="custom-control-input" value="grupo"> <label
										class="custom-control-label" for="customRadioInline1">Aula
										em grupo</label>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-12">
						<h3>Onde serão suas aulas?</h3>
						<div class="col-md-4">
							<div class="form-group">
								<div class="custom-control form-check">
									<input type="checkbox" class="form-check-input"
										name="aulasCasa" value="sim"> <label
										class="form-check-input">Eu posso receber o aluno em
										minha casa</label>
								</div>
							</div>
							<div class="form-group">
								<div class="custom-control form-check ">
									<input type="checkbox" class="form-check-input"
										name="aulasWebcam" value="sim"> <label
										class="form-check-input">Eu posso dar aulas por webcam</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<div class="custom-control form-check ">
									<input type="checkbox" class="form-check-input"
										name="aulasAluno" value="sim"> <label
										class="form-check-input">Eu posso me deslocar à casa
										do aluno</label>
								</div>
							</div>
						</div>
						<button class="btn btn-success nextBtn btn-lg pull-right"
							type="button">Avançar</button>
					</div>
				</div>
			</div>
			<div class="row setup-content" id="step-3">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Encontre um título único para seu anúncio</h3>
						<div class="form-group">
							<label for="comment">Título para seu anúncio</label>
							<textarea class="form-control" rows="5" id="comment"
								name="titulo" type="text" ></textarea>
						</div>
						<button class="btn btn-success nextBtn btn-lg pull-right"
							type="button">Avançar</button>
					</div>
				</div>
			</div>
			<div class="row setup-content" id="step-4">
				<div class="col-xs-12">
					<div class="col-md-12"></div>
					<h3>Fale um pouco mais sobre você</h3>
					<div class="form-group">
						<label for="comment">Qual é sua metodologia</label>
						<textarea class="form-control" id="comment" name="metodologia"
							type="text" placeholder="Ex. A forma que ensino e simples" ></textarea>
					</div>
					<div class="form-group">
						<label for="comment">Apresente-se</label>
						<textarea class="form-control" id="comment" name="apresentacao"
							type="text" placeholder="Ex. Eu sou programador/ PHP, CSS, JAVA"></textarea>
					</div>
					<div class="form-group">
						<label for="comment">Formação</label>
						<textarea class="form-control" id="comment" name="formacao"
							type="text" placeholder="Ex. Estudante de Ciência da Computação"></textarea>
					</div>
					<button class="btn btn-success nextBtn btn-lg pull-right"
						type="button">Avançar</button>
				</div>
			</div>

			<div class="row setup-content" id="step-5">
				<div class="col-xs-12">
					<div class="col-md-12">
						<div class="container">
							<h3>Sua tarifa para uma hora de aula</h3>
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label">O valor pela hora</label> <input
										maxlength="200" type="text" class="form-control"
										placeholder="R$" name="valorHora" id="valorH" />
								</div>
								<div class="form-group">
									<label class="control-label">Adicionar uma taxa de
										deslocamento</label> <input maxlength="200" type="text"
										class="form-control" placeholder="R$ 20"
										name="valorDeslocamento" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label">indicar um valor diferente
										para aulas por webcam</label> <input maxlength="200" type="text"
										class="form-control" placeholder="R$ 5" name="valorWeb" />
								</div>
								<div class="form-group">
									<label class="control-label">Propor um valor
										decrescente para um pacote de aulas</label> <input maxlength="200"
										type="text" class="form-control" placeholder="R$ 10"
										name="valorPacote" value=""/>
								</div>
							</div>
							<button class="btn btn-success nextBtn btn-lg pull-right"
								type="submit">Criar Anuncio</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>