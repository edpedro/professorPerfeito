<!--BARRA DE ACESSIBILIDADE-->
<div class="container-fluid">
	<div class="row" id="menuAcessi">
		<div class="col-md-9 col-sm-8">
			<a href="#"><span class="badge badge-info">1</span> Ir para
				conte�do</a> <a href="#"><span class="badge badge-info">2</span> Ir
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
				title="Professor Perfeito"></a><img
				src="<%=request.getContextPath()%>/resources/img1/logo2019.png"
				style="height: 70px"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">

			<div class="header-rightside">
				<ul class="list-inline header-top pull-right">
					<li class="dropdown" id="menu1"><c:choose>
							<c:when test="${not empty alunoLogado}">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown"><img
									src="<%=request.getContextPath()%>/resources/img1/avatar.jpg"
									alt="user" style="height: 50px"> <b class="caret"></b></a>
							</c:when>
							<c:otherwise>
							</c:otherwise>
						</c:choose>


						<ul class="dropdown-menu">
							<li>
								<div class="navbar-content">
									<span>${alunoLogado.nome}</span>
									<p class="text-muted small">${alunoLogado.email}</p>
									<div class="divider"></div>
									<a href="<%=request.getContextPath()%>/logout"
										class="btn btn-success vi">Sair</a>
								</div>
							</li>
						</ul></li>
				</ul>
			</div>
			<ul class="nav navbar-nav navbar-right" style="margin-top: 20px">
				<li><a href="#">Professor</a></li>
				<li><a href="#">Ajuda</a></li>
				<li><a href="#">Fala conosco</a></li>
				<li><a href="#" data-target="#login" data-toggle="modal">Login</a></li>
			</ul>



		</div>
	</div>
</nav>
<!--BANNER-->