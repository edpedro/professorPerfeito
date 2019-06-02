<div class="row">
					<header>
						<div class="col-md-7">
							<nav class="navbar-default pull-left">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle collapsed"
										data-toggle="offcanvas" data-target="#side-menu"
										aria-expanded="false">
										<span class="sr-only">Toggle navigation</span> <span
											class="icon-bar"></span> <span class="icon-bar"></span> <span
											class="icon-bar"></span>
									</button>
								</div>
							</nav>
						</div>
						<div class="col-md-5">
						<input type="hidden" name="idProfessor" id="${professorLogado.idprofessor}">
							<div class="header-rightside">
								<ul class="list-inline header-top pull-right">
									<li class="dropdown"><a href="#" class="dropdown-toggle"
										data-toggle="dropdown"><img
											src="<%=request.getContextPath()%>/resources/img1/${professorLogado.imagem}"
											alt="user"> <b class="caret"></b></a>
										<ul class="dropdown-menu">
											<li>
												<div class="navbar-content">
													<span>${professorLogado.nome}</span>
													<p class="text-muted small"></p>
													<div>
														
													</div>
													<a href="<%=request.getContextPath()%>/logout" class="btn btn-danger vi btn-sm">Sair</a>
												</div>
											</li>
										</ul></li>
								</ul>
							</div>
						</div>
					</header>
				</div>