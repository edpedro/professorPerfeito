<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

</head>
<body>
	<!-- Menu -->
	<c:import url="menuSessão.jsp" />

	<div class="container">
		<div class="stepwizard">
			<div class="stepwizard-row setup-panel">
				<div class="stepwizard-step">
					<a href="#step-1" type="button" class="btn btn btn-success"
						disabled="disabled">1</a>
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
		<form action="saveCurso" method="post" role="form" class="form">
			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Você deseja ensinar?</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleFormControlSelect1">Materia</label> <select
										class="form-control" id="exampleFormControlSelect1"
										name="materia">
										<option>Escolha</option>
										<option>Reforço escolar</option>
										<option>Línguas</option>
										<option value="Informática">Informática</option>
										<option>Música</option>
										<option>Esportes e dança</option>
										<option>Artes e Lazer</option>
										<option>Saúde e Bem-estar</option>
										<option value="Desenvolvimento">Desenvolvimento
											pessoal</option>
									</select>
								</div>
								<div class="form-group">
									<label class="control-label">Adicione outras
										competências</label> <input maxlength="200" type="text"
										name="competencia" required="required" class="form-control"
										placeholder="Adicione outras competências" />
										
										<!-- id do professor -->
									<input type="text" id="professor" name="professor" value="${professor.idprofessor}">
								</div>

							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleFormControlSelect1">Todas as
										matérias Informática</label> <select class="form-control"
										id="exampleFormControlSelect1" name="subMateria">
										<option>Escolha</option>
										<option value="C#.NET">C#.NET</option>
										<option value="Computador">Computador</option>
										<option>Informática</option>
										<option>CSS</option>
										<option>DOS</option>
										<option>iPhone</option>
										<option>Linguagens de programação</option>
										<option>Linux</option>
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
									<input type="radio" id="customRadioInline1"
										name="customRadioInline1" class="custom-control-input"
										name="ministra" value="inividual"> <label
										class="custom-control-label" for="customRadioInline1">Aula
										individual</label>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="form-group">
								<div class="custom-control custom-radio custom-control-inline">
									<input type="radsio" id="customRadioInline1"
										name="customRadioInline1" class="custom-control-input"
										name="ministra" value="grupo"> <label
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
								name="titulo" type="text"></textarea>
						</div>
						<button class="btn btn-success nextBtn btn-lg pull-right"
							type="button">Avançar</button>
					</div>
				</div>
			</div>
			<div class="row setup-content" id="step-4">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Foto</h3>
						<div class="form-group">
							<div class="file-upload">
								<button class="file-upload-btn" type="button"
									onclick="$('.file-upload-input').trigger( 'click' )">Adicionar
									Imagem</button>

								<div class="image-upload-wrap">
									<input class="file-upload-input" type='file'
										onchange="readURL(this);" accept="image/*" />
									<div class="drag-text">
										<h3>Selecione uma Foto</h3>
									</div>
								</div>
								<div class="file-upload-content">
									<img class="file-upload-image" src="#" alt="your image" />
									<div class="image-title-wrap">
										<button type="button" onclick="removeUpload()"
											class="remove-image">
											Remove <span class="image-title">Uploaded Image</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<h3>Fale um pouco mais sobre você</h3>
						<div class="form-group">
							<label for="comment">Qual é sua metodologia</label>
							<textarea class="form-control" rows="5" id="comment"
								name="metodologia" type="text"
								placeholder="Ex. A forma que ensino e simples"></textarea>
						</div>
						<div class="form-group">
							<label for="comment">Apresente-se</label>
							<textarea class="form-control" rows="5" id="comment"
								name="apresentacao" type="text"
								placeholder="Ex. Eu sou programador/ PHP, CSS, JAVA"></textarea>
						</div>
						<div class="form-group">
							<h3>Endereço</h3>
							<div class="form-group col-md-2">
								<label for="inputCEP">CEP</label> <input type="text" name="cep"
									class="form-control" id="inputCEP" name="cep">
							</div>
							<div class="form-group col-md-6">
								<label for="inputCity">Cidade</label> <input type="text"
									name="cidade" class="form-control" id="inputCity" name="cidade">
							</div>
							<div class="form-group col-md-2">
								<label for="inputCity">Estado</label> <input type="text"
									name="estado" class="form-control" id="inputCity" name="uf">
							</div>
							<div class="form-row">
								<div class="form-group  col-md-6">
									<label for="inputAddress">Rua</label> <input type="text"
										name="rua" class="form-control" id="inputAddress"
										placeholder="EX Rua dos Bobos, nº 0" name="rua">
								</div>
								<div class="form-group col-md-6">
									<label for="inputCity">Bairro</label> <input type="text"
										name="bairro" class="form-control" id="inputCity"
										name="bairro">
								</div>
							</div>
						</div>
						<button class="btn btn-success nextBtn btn-lg pull-right"
							type="button">Avançar</button>
					</div>
				</div>
			</div>
			<div class="row setup-content" id="step-5">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Sua tarifa para uma hora de aula</h3>
						<div class="container">
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label">O valor pela hora</label> <input
										maxlength="200" type="text" required="required"
										class="form-control" placeholder="R$" name="valorHora" />
								</div>
								<div class="form-group">
									<label class="control-label">Adicionar uma taxa de
										deslocamento</label> <input maxlength="200" type="text"
										required="required" class="form-control" placeholder="R$ 20"
										name="valorDeslocamento" />
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label">indicar um valor diferente
										para aulas por webcam</label> <input maxlength="200" type="text"
										required="required" class="form-control" placeholder="R$ 5"
										name="valorWeb" />
								</div>
								<div class="form-group">
									<label class="control-label">Propor um valor
										decrescente para um pacote de aulas</label> <input maxlength="200"
										type="text" required="required" class="form-control"
										placeholder="R$ 10" name="valorPacote" />
								</div>
							</div>
							<button class="btn btn-success nextBtn btn-lg pull-right"
								type="submit">Cadastrar</button>
						</div>
					</div>
				</div>
			</div>

		</form>
	</div>






	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.easing.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/custom.js"></script>

</body>
</html>