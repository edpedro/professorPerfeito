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
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/validacoes.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.mask.min.js"></script>		

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
 <script type="text/javascript" >

        $(document).ready(function() {
        	 $("#valorHora").mask("999.999.990,00", {reverse: true})
        	 $("#valorDeslocamento").mask("999.999.990,00", {reverse: true})
        	 $("#valorWeb").mask("999.999.990,00", {reverse: true})
        	 $("#valorWeb").mask("999.999.990,00", {reverse: true})
        	 $("#celular").mask("(00) 0000-00009")
        	 $("#telefone").mask("(00) 0000-0000")
            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#rua").val("");
                $("#bairro").val("");
                $("#cidade").val("");
                $("#uf").val("");
                $("#ibge").val("");
            }
            
            //Quando o campo cep perde o foco.
            $("#cep").blur(function() {

                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#rua").val("...");
                        $("#bairro").val("...");
                        $("#cidade").val("...");
                        $("#uf").val("...");
                        $("#ibge").val("...");

                        //Consulta o webservice viacep.com.br/
                        $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#rua").val(dados.logradouro);
                                $("#bairro").val(dados.bairro);
                                $("#cidade").val(dados.localidade);
                                $("#uf").val(dados.uf);
                                $("#ibge").val(dados.ibge);
                               
                            } //end if.
                            else {
                                //CEP pesquisado não foi encontrado.
                                limpa_formulário_cep();
                                alert("CEP não encontrado.");
                            }
                        });
                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
                }
            });
        });

    </script>
</head>
<body>

	<!-- Menu -->
	<c:import url="menu/menuSessão.jsp" />

	<c:if test="${not empty msg}">
		<div class="alert alert-success" role="alert"
			style="width: 300px; height: 50px;">
			<strong>${msg}</strong> Bem-vido!
		</div>
	</c:if>

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
		<form action="saveCurso" method="post" role="form" class="form"
			enctype="multipart/form-data" id="cursoFormulario"
			name="cursoFormulario">

			<div class="row setup-content" id="step-1">
				<div class="col-xs-12">
					<div class="col-md-12">
						<h3>Você deseja ensinar?</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<label for="materia">Materia</label> <select
										class="form-control" id="materia" name="materia" >
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
										name="competencia" class="form-control" id="competencia"
										placeholder="Adicione outras competências" />
									<form:errors path="curso.competencia" cssStyle="color:red" /> 
									<!-- id do professor -->
									<input type="hidden" id="professor" name="professor"
										value="${sessionScope.professor}">

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
							<div class="container">
								<div class="row">
									<input class="fot" name="file" type='file'
										onchange="readURL(this);" />

								</div>
								<img id="blah" src="" alt="" />
							</div>
						</div>
						<h3>Fale um pouco mais sobre você</h3>
						<div class="form-group">
							<label for="comment">Qual é sua metodologia</label>
							<textarea class="form-control" id="comment" name="metodologia"
								rows="5" type="text" placeholder="Ex. A forma que ensino e simples"></textarea>
						</div>
						<div class="form-group">
							<label for="comment">Apresente-se</label>
							<textarea class="form-control" id="comment" name="apresentacao"
								rows="5" type="text" placeholder="Ex. Eu sou programador/ PHP, CSS, JAVA"></textarea>
						</div>
						<div class="form-group">
							<label for="comment">Formação</label>
							<textarea class="form-control" id="comment" name="formacao"
								rows="5" type="text" placeholder="Ex. Estudante de Ciência da Computação"></textarea>
						</div>
						<div class="form-group">
							<h3>DADOS</h3>
							<div class="col-md-12">
								<div class="form-group col-md-3">
									<label for="inputCEP">Telefone</label> <input type="text"
										class="form-control" name="telefone" id="telefone">
								</div>
								<div class="form-group col-md-3">
									<label for="inputCEP">Celular</label> <input type="text"
										class="form-control" name="celular" id="celular">
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group col-md-3">
									<label for="inputCEP">Data de nascimento</label> <input
										type="date" class="form-control" id="inputCEP"
										name="dataNascimento">
								</div>
							</div>
							<h3>ENDEREÇO</h3>
							<div class="form-group col-md-2">
								<label for="cep">CEP</label> <input type="text"
									class="form-control" id="cep" value="" size="10" maxlength="9" name="cep">
							</div>
							<div class="form-group col-md-6">
								<label for="cidade">Cidade</label> <input type="text"
									class="form-control"  id="cidade" size="40" name="cidade">
							</div>
							<div class="form-group col-md-2">
								<label for="uf">Estado</label> <input type="text"
									class="form-control" id="uf" size="2" name="Estado">
							</div>
							<div class="form-row">
								<div class="form-group  col-md-6">
									<label for="rua">Rua</label> <input type="text"
										class="form-control" id="rua" size="60"
										placeholder="EX Rua dos Bobos, nº 0" name="rua">
								</div>
								<div class="form-group col-md-6">
									<label for="bairro">Bairro</label> <input type="text"
										class="form-control" id="bairro" size="40" name="bairro">
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
										maxlength="200" type="text" class="form-control"
										placeholder="R$ 00,00" name="valorHora" id="valorHora" />
								</div>
								<div class="form-group">
									<label class="control-label">Adicionar uma taxa de
										deslocamento</label> <input maxlength="200" type="text"
										class="form-control" placeholder="R$ 00,00"
										name="valorDeslocamento" id="valorDeslocamento"/>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<label class="control-label">indicar um valor diferente
										para aulas por webcam</label> <input maxlength="200" type="text"
										class="form-control" placeholder="R$ R$ 00,00" name="valorWeb" id="valorWeb" />
								</div>
								<div class="form-group">
									<label class="control-label">Propor um valor
										decrescente para um pacote de aulas</label> <input maxlength="200"
										type="text" class="form-control" placeholder="R$ R$ 00,00"
										name="valorPacote" id="valorPacote"/>
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


</body>
</html>