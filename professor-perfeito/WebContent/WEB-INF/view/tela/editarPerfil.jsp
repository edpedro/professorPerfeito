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
<script
	src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.mask.min.js"></script>

<script type="text/javascript">
	window.setTimeout(function() {
		$(".alert").fadeTo(500, 0).slideUp(500, function() {
			$(this).remove();
		});
	}, 4000);
</script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("#salario").mask("999.999.990,00", {
					reverse : true
				})
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
				$("#cep").blur(
						function() {

							//Nova variável "cep" somente com dígitos.
							var cep = $(this).val().replace(/\D/g, '');

							//Verifica se campo cep possui valor informado.
							if (cep != "") {

								//Expressão regular para validar o CEP.
								var validacep = /^[0-9]{8}$/;

								//Valida o formato do CEP.
								if (validacep.test(cep)) {

									//Preenche os campos com "..." enquanto consulta webservice.
									$("#rua").val("...");
									$("#bairro").val("...");
									$("#cidade").val("...");
									$("#uf").val("...");
									$("#ibge").val("...");

									//Consulta o webservice viacep.com.br/
									$.getJSON("https://viacep.com.br/ws/" + cep
											+ "/json/?callback=?", function(
											dados) {

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
<script type="text/javascript">
	window.setTimeout(function() {
		$(".alert").fadeTo(500, 0).slideUp(500, function() {
			$(this).remove();
		});
	}, 4000);

	$(document).ready(function() {	
		$("#alterarConta").validate({
			rules : {				
				email : {
					required : true,
					email : true
				},
				senha : {
					required : true,
					minlength : 6
				}
			}
		})
	})
</script>
</head>
<body>

	<!-- Menu -->
	<c:import url="menu/menuSessão.jsp" />

	<c:if test="${msg1 !=null}">
	<div class="alert alert-danger" role="alert"
		style="width: 400px; height: 50px;">
		<strong>${msg1}</strong>
	</div>
	</c:if>
	<c:if test="${msg !=null}">
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

				<div class="user-dashboard">
					<div class="row">
						<form action="alterarProfessor" method="post"
							enctype="multipart/form-data">
							<div class="col-md-7 col-sm-5 col-xs-12 gutter" id="teste">
								<div class="sales" id="info">
									<div class="circle2">
										<img
											src="<%=request.getContextPath()%>/resources/img1/${professor.imagem}">
									</div>
									<div class="divider">
										<div class="form-group" style="margin-left:30px;">
											<div class="row">
												<label for='selecao-arquivo' id="lab" >Alterar a Foto
													&#187;</label> <input id="selecao-arquivo" class="fot" name="file"
													type='file' onchange="readURL(this);" value="${professor.imagem}">
											</div>
										</div>
											<img id="blah" src="" alt="" style=" width:50px; margin-left: 230px;"/>
									</div>
								</div>

								<div class="sales">
									<div class="col-md-12">
										<h2 style="margin-bottom: 10px;">Informações</h2>
									</div>


									<input type="hidden" name="idprofessor"
										value="${professor.idprofessor}">

									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputEmail4">Nome</label> <input type="text"
												class="form-control" id="inputEmail4" placeholder="nome"
												name="nome" value="${professor.nome}">
										</div>
										<div class="form-group col-md-6">
											<label for="inputPassword4">Data nascimento</label> <input
												type="date" class="form-control" id="inputPassword4"
												name="dataNascimento" value="${professor.dataNascimento}">
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-6">
											<label for="inputCity">Celular</label> <input type="text"
												class="form-control" id="inputCity" name="celular"
												value="${professor.celular}">
										</div>
										<div class="form-group col-md-6">
											<label for="inputCity">Telefone</label> <input type="text"
												class="form-control" id="inputCity" name="telefone"
												value="${professor.telefone}">
										</div>
									</div>
									<div class="form-row">
										<div class="form-group col-md-3">
											<label for="cep">CEP</label> <input type="text"
												class="form-control" id="cep" name="cep"
												value="${professor.cep}" size="10" maxlength="9">
										</div>
										<div class="form-group col-md-6">
											<label for="cidade">Cidade</label> <input type="text"
												class="form-control" id="cidade" name="cidade" size="40"
												value="${professor.cidade}">
										</div>
										<div class="form-group col-md-3">
											<label for="uf">Estado</label> <input type="text"
												class="form-control" id="uf" name="estado" size="2"
												value="${professor.estado}">
										</div>
										<div class="form-group col-md-6">
											<label for="rua">Rua</label> <input type="text"
												class="form-control" id="rua" name="rua" size="60"
												value="${professor.rua}">
										</div>
										<div class="form-group col-md-6">
											<label for="bairro">Bairro</label> <input type="text"
												class="form-control" id="bairro" name="bairro" size="40"
												value="${professor.bairro}">
										</div>
										<div class="form-group">
											<button type="submit" class="btn btn-success">Alterar</button>
										</div>
									</div>
								</div>
							</div>
						</form>
						<div class="col-md-5 col-sm-7 col-xs-12 gutter">
							<div class="sales s1">
								<div class="col-md-12">
									<h2 style="margin-bottom: 10px;">Conta</h2>
								</div>								
								<div class="col-md-12">
									<form action="alterarConta" method="post">
										<input type="hidden" name="idprofessor"
										value="${professor.idprofessor}">
										<div class="form-group">
											<label for="email">Email</label> <input type="email"
												class="form-control" id="email" name="email">
										</div>
										<div class="form-group">
											<label for="senha">Senha Antiga</label> <input type="password"
												class="form-control" id="senha" name="senhaAntiga">
										</div>
										<div class="form-group">
											<label for="senha">Senha Nova</label> <input type="password"
												class="form-control" id="senha" name="senha">
										</div>
										<button type="submit" class="btn btn-success">Alterar</button>
									</form>
								</div>
							</div>
							<div class="sales s1">
								<div class="col-md-12">
									<h2 style="margin-bottom: 10px;">Excluir Conta</h2>
								</div>
								<div class="col-md-12">
									<form action="">
										<div class="form-group">
											<label for="email">Email</label> <input type="email"
												class="form-control" id="email">
										</div>
										<div class="form-group">
											<label for="pwd">Senha</label> <input type="password"
												class="form-control" id="pwd">
										</div>
										<button type="submit" class="btn btn-success">Excluir</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>