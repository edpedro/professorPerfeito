
<div class="container-fluid">
	<div class="row" id="menuAcessi">
		<div class="col-md-9 col-sm-8">
			<a href="#"><span class="badge badge-info">1</span> Ir para
				conteúdo</a> <a href="#"><span class="badge badge-info">2</span> Ir
				para o menu</a> <a href="#"><span class="badge badge-info">3</span>
				Ir para a busca</a>
		</div>
		<div class="col-md-3 col-sm-4">
			<a href="#" onClick="fonte('a');"><span class="badge badge-info">A+</span>
				Aumentar Fonte</a> <a href="#" onClick="fonte('d');"><span
				class="badge badge-info">A-</span> Diminiur Fonte</a>
		</div>
	</div>
</div>
<!--MENU-->
<nav class="navbar navbar-default acessibilidade">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a href="#" data-toggle="tooltip" data-placement="top"
				title="Professor Perfeito"><img
				src="<%=request.getContextPath()%>/resources/img1/logo2019.png"
				style="height: 70px"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			
			<div class="header-rightside ">
				<ul class="list-inline header-top pull-right">
					<li class="dropdown" id="menu1"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><img
							src="<%=request.getContextPath()%>/resources/img1/${professorLogado.imagem}"
							alt="user" style="height: 50px"> <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li>
								<div class="navbar-content ">
									<span>${professorLogado.nome}</span>
									<p class="text-muted small">${professorLogado.email}</p>
									<div >
									<a href="<%=request.getContextPath()%>/tela/perfil" class="btn btn-success vi">Painel</a>
									</div>
									<a href="<%=request.getContextPath()%>/logout"class="btn btn-danger btn-sm" style="margin: 10px">Sair</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
			<ul class="nav navbar-nav navbar-right" style="margin-top: 20px">
				<li><a href="#">Professor</a></li>
				<li><a href="#">Ajuda</a></li>
				<li><a href="#">Fala conosco</a></li>

			</ul>



		</div>
	</div>
</nav>