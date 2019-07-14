<!--BARRA DE ACESSIBILIDADE-->
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
			<a href="<%=request.getContextPath()%>/" data-toggle="tooltip" data-placement="top"
				title="Professor Perfeito"><img
				src="<%=request.getContextPath()%>/resources/img1/logo2019.png"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="<%=request.getContextPath()%>/">Inicio</a></li>
				<li><a href="<%=request.getContextPath()%>/tela/buscar">Professor</a></li>
				<li><a href="<%=request.getContextPath()%>/">Ajuda</a></li>
				<li><a href="<%=request.getContextPath()%>/">Fala conosco</a></li>
			</ul>
		</div>
	</div>
</nav>