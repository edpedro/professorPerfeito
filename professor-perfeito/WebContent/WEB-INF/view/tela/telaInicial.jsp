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

</head>
<body>
	<!-- Menu -->
	<c:import url="menu.jsp" />
	<!--BANNER-->
	<div class="banner">
		<div class="bg-color">
			<div class="container">
				<div class="row">
					<div class="banner-text text-center">
						<div class="text-border">
							<a href="#" id="text-dec1"><h2 class="text-dec">DAR
									AULAS</h2></a>
						</div>
						<div class="intro-para text-center quote">
							<p class="big-text">Encontre e converse gratuitamente com
								professores particulares de todo o Brasil</p>
						</div>
						<a href="#faculity-member" class="mouse-hover">
							<div class="mouse " data-toggle="tooltip" data-placement="top"
								title="Listar professor"></div>
						</a>
					</div>
					<!-- BARRA DE BUSCAR-->
					<div class="col-md-12">
						<div class="cta-2-form text-center">
							<form action="#" method="post" id="workshop-newsletter-form">
								<input name="" placeholder="Qual matéria deseja aprende?"
									type="email"> <input class="cta-2-form-submit-btn"
									value="Buscar" type="submit">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--CORPO-->
	<!--PROFESSORES-->
	<section id="faculity-member" class="section-padding acessibilidade">
		<div class="container">
			<div class="row">
				<div class="header-section text-center">
					<h2>Encontre um professor</h2>
					<p>Converse gratuitamente com nossos professores e escolha o
						seu preferido.</p>
					<hr class="bottom-line">
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="pm-staff-profile-container">
						<div class="pm-staff-profile-image-wrapper text-center">
							<div class="pm-staff-profile-image">
								<img
									src="<%=request.getContextPath()%>/resources/img1/mentor.jpg"
									alt="" class="img-thumbnail img-circle" />
							</div>
						</div>
						<div class="pm-staff-profile-details text-center">
							<p class="pm-staff-profile-name">Fernando</p>
							<p class="pm-staff-profile-title">Recife (Pernambuco)</p>

							<p class="pm-staff-profile-bio">Programação Web para
								Designers - php, js, css e html. Formando em Eng da Computação
								com Empresa na area de desenvolvimento de software a 3 anos em
								Recife.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="pm-staff-profile-container">
						<div class="pm-staff-profile-image-wrapper text-center">
							<div class="pm-staff-profile-image">
								<img
									src="<%=request.getContextPath()%>/resources/img1/mentor.jpg"
									alt="" class="img-thumbnail img-circle" />
							</div>
						</div>
						<div class="pm-staff-profile-details text-center">
							<p class="pm-staff-profile-name">Carlos</p>
							<p class="pm-staff-profile-title">Jaboatão dos Guararapes</p>

							<p class="pm-staff-profile-bio">Aprenda PHP do jeito certo,
								sem dor de cabeça na verdade é muito simples.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-4 col-sm-4">
					<div class="pm-staff-profile-container">
						<div class="pm-staff-profile-image-wrapper text-center">
							<div class="pm-staff-profile-image">
								<img
									src="<%=request.getContextPath()%>/resources/img1/mentor.jpg"
									alt="" class="img-thumbnail img-circle" />
							</div>
						</div>
						<div class="pm-staff-profile-details text-center">
							<p class="pm-staff-profile-name">Ronaldo</p>
							<p class="pm-staff-profile-title">Jaboatão dos Guararapes</p>

							<p class="pm-staff-profile-bio">Professor de desenvolvimento
								web php com frameworks e cms's (aplicações web e web services).</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- CIDADES -->
	<section id="work-shop" class="section-padding acessibilidade">
		<div class="container">
			<div class="row" id="cidImg">
				<div class="header-section text-center">
					<h2>Aula presencial na sua cidade</h2>
					<hr class="bottom-line">
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service-box text-center">
						<div class="icon-box">
							<img
								src="<%=request.getContextPath()%>/resources/img1/pernambuco.jpg">
						</div>
						<div class="icon-text">
							<h4 class="ser-text">Pernambuco</h4>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service-box text-center">
						<div class="icon-box">
							<img
								src="<%=request.getContextPath()%>/resources/img1/brasilia.jpg">
						</div>
						<div class="icon-text">
							<h4 class="ser-text">Brasília</h4>
						</div>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="service-box text-center">
						<div class="icon-box">
							<img
								src="<%=request.getContextPath()%>/resources/img1/salvador.jpg">
						</div>
						<div class="icon-text">
							<h4 class="ser-text">Salvador</h4>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--CURSOS-->
	<section id="courses" class="section-padding acessibilidade">
		<div class="container">
			<div class="row">
				<div class="header-section text-center">
					<h2>Aprenda algo novo</h2>
					<p>Você já deve ter ouvido falar que conhecimento é poder e
						isso é realmente verdade, pois quem sabe o que fazer, e como
						fazer, acaba ditando as regras. É por isso que eu sempre reforço a
						importância de aprender algo novo todos os dias</p>
					<hr class="bottom-line">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="<%=request.getContextPath()%>/resources/img1/ingles.jpg"
							class="img-responsive">
						<figcaption>
							<h3>Inglês</h3>
							<p>Curso de inglês online pra quem quer aprender e ter
								resultados rápidos.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img
							src="<%=request.getContextPath()%>/resources/img1/Photoshop.jpg"
							class="img-responsive">
						<figcaption>
							<h3>Photoshop</h3>
							<p>Crie seus melhores trabalhos com os recursos e as
								novidades do Photoshop.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img
							src="<%=request.getContextPath()%>/resources/img1/portugues.jpg"
							class="img-responsive">
						<figcaption>
							<h3>Língua Portuguesa</h3>
							<p>O curso objetiva fornecer os elementos gramaticais
								indispensáveis à compreensão da norma culta da Língua
								Portuguesa.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="<%=request.getContextPath()%>/resources/img1/violao.jpg"
							class="img-responsive">
						<figcaption>
							<h3>Violão</h3>
							<p>Aprenda a tocar violão com o curso do Violão DeBoa.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img src="<%=request.getContextPath()%>/resources/img1/yoga.jpg"
							class="img-responsive">
						<figcaption>
							<h3>Yoga</h3>
							<p>Cursos de Yoga, desenvolvidos com professores referências
								no assunto para que você tenha acesso a um conteúdo de
								qualidade.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
				<div class="col-md-4 col-sm-6 padleft-right">
					<figure class="imghvr-fold-up">
						<img
							src="<%=request.getContextPath()%>/resources/img1/course06.jpg"
							class="img-responsive">
						<figcaption>
							<h3>Fotografia</h3>
							<p>O grande objetivo deste curso é fazer com que nosso aluno
								saia da escola preparado para atuar na área da fotografia.</p>
						</figcaption>
						<a href="#"></a>
					</figure>
				</div>
			</div>
		</div>
	</section>
	<!--HISTORICO-->
	<section id="organisations" class="section-padding acessibilidade">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<div class="orga-stru">
							<h3>15.000</h3>
							<p>professores</p>
							<i class="fa fa-male"></i>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<div class="orga-stru">
							<h3>5.000</h3>
							<p>alunos satisfeitos</p>
							<i class="fa fa-male"></i>
						</div>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<div class="orga-stru">
							<h3>1.500</h3>
							<p>matérias</p>
							<i class="fa fa-male"></i>
						</div>
					</div>
				</div>
				<div class="col-md-6">
					<div class="detail-info">
						<hgroup>
							<h3 class="det-txt">Encontre um professor</h3>
							<h4 class="sm-txt">Converse gratuitamente com nossos
								professores e escolha o seu preferido.</h4>
						</hgroup>
						<p class="det-p">sua aula particular ainda hoje. Os
							professores irão te responder com enorme rapidez.</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--COMENTARIO-->
	<section id="testimonial" class="section-padding">
		<div class="container">
			<div class="row">
				<div class="header-section text-center">
					<h2 class="white">tira-duvidas com professores</h2>
					<p class="white">Compartilhe seu conhecimento e aumente sua
						renda. Somos o MAIOR portal de Aulas Particulares do Brasil, são
						mais de 160 mil alunos buscando por Professores Particulares.</p>
					<hr class="bottom-line bg-white">
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="text-comment">
						<p class="text-par">"Como faço para aprender PHP?"</p>
						<p class="text-name">Fernando - Aluno</p>
						<a href="#"><h5>Respostar 10</h5></a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="text-comment">
						<p class="text-par">"Quero aprender a fazer app?"</p>
						<p class="text-name">Carlos - Aluno</p>
						<a href="#"><h5>Respostar 10</h5></a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--BUSCAR-->
	<section id="cta-2">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<h2 class="text-center">Encontre o professor perfeito</h2>
					<div class="cta-2-form text-center">
						<form action="#" method="post" id="workshop-newsletter-form">
							<input name="" placeholder="Ex: matemática" type="email">
							<input class="cta-2-form-submit-btn" value="Buscar" type="submit">
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Menu -->
	<c:import url="rodape.jsp" />

	<!-- Modal -->
	<!-- Modal Login-->
	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog modal-sm">

			<!-- Modal content no 1-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-center form-title">Seja bem vindo</h4>
				</div>
				<div class="modal-body padtrbl">

					<div class="login-box-body">
						<a href="#" class="fa fa-facebook"></a> <span>ou</span> <a
							href="#" class="fa fa-google"></a>
						<p class="login-box-msg">Media social</p>
						<div class="form-group">
							<form name="" id="loginForm">
								<div class="form-group has-feedback">
									<!----- username -------------->
									<input class="form-control" placeholder="Email" id="loginid"
										type="text" autocomplete="off" /> <span
										style="display: none; font-weight: bold; position: absolute; color: red; position: absolute; padding: 4px; font-size: 11px; background-color: rgba(128, 128, 128, 0.26); z-index: 17; right: 27px; top: 5px;"
										id="span_loginid"></span>
									<!---Alredy exists  ! -->
									<span class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<!----- password -------------->
									<input class="form-control" placeholder="Senha"
										id="loginpsw" type="Senha" autocomplete="off" /> <span
										style="display: none; font-weight: bold; position: absolute; color: grey; position: absolute; padding: 4px; font-size: 11px; background-color: rgba(128, 128, 128, 0.26); z-index: 17; right: 27px; top: 5px;"
										id="span_loginpsw"></span>
									<!---Alredy exists  ! -->
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<div class="checkbox icheck">
											<label> <input type="checkbox" id="loginrem">
												Lembre de mim
											</label>
										</div>
									</div>
									<div class="col-xs-12">
										<button type="submit" class="btn btn-green btn-block btn-flat"
											onclick="userlogin()">Entrar</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- Modal Cadastro-->
	<div class="modal fade" id="cadastro" role="dialog">
		<div class="modal-dialog modal-sm">
			<!-- Modal content no 1-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title text-center form-title">CADASTRE-SE</h4>
				</div>

				<div class="modal-body padtrbl">

					<div class="login-box-body">
						<a href="#" class="fa fa-facebook"></a> <span>ou</span> <a
							href="#" class="fa fa-google"></a>
						<p class="login-box-msg"></p>
						<div class="form-group">
							<form action="save" method="post">
							
								<div class="form-group has-feedback">
									<!----- username -------------->
									<input class="form-control" placeholder="Nome" id="loginid"
										type="text" autocomplete="off" name="nome"/> <span
										style="display: none; font-weight: bold; position: absolute; color: red; position: absolute; padding: 4px; font-size: 11px; background-color: rgba(128, 128, 128, 0.26); z-index: 17; right: 27px; top: 5px;"
										id="span_loginid"></span>
									<!---Alredy exists  ! -->
									<span class="glyphicon glyphicon-user form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<!----- password -------------->
									<input class="form-control" placeholder="Email" id="loginpsw"
										type="email" autocomplete="off" name="email"/> <span
										style="display: none; font-weight: bold; position: absolute; color: grey; position: absolute; padding: 4px; font-size: 11px; background-color: rgba(128, 128, 128, 0.26); z-index: 17; right: 27px; top: 5px;"
										id="span_loginpsw"></span>
									<!---Alredy exists  ! -->
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<!----- password -------------->
									<input class="form-control" placeholder="Senha" id="loginpsw"
										type="password" autocomplete="off" name="senha"/> <span
										style="display: none; font-weight: bold; position: absolute; color: grey; position: absolute; padding: 4px; font-size: 11px; background-color: rgba(128, 128, 128, 0.26); z-index: 17; right: 27px; top: 5px;"
										id="span_loginpsw"></span>
									<!---Alredy exists  ! -->
									<span class="glyphicon glyphicon-lock form-control-feedback"></span>
								</div>
								<div class="form-group has-feedback">
									<div class="input-group ">
										<div id="radioBtn" class="btn-group">
											<span class="btn btn-green btn-sm active"
												data-toggle="estado" data-value="A">Aluno</span> <span
												class="btn btn-default btn-sm notActive"
												data-toggle="estado" data-value="P">Professor</span>
										</div>
										<input type="hidden" name="estado" id="estado">
									</div>
								</div>
								<div class="row">
									<div class="col-xs-12">
										<button type="submit" class="btn btn-green btn-block btn-flat"
											onclick="userlogin()">Cadastrar</button>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

		</div>
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