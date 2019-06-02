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
<body>
	<!-- Menu logado-->
	<c:choose>
		<c:when test="${not empty alunoLogado}">
			<c:import url="menu/menuA.jsp" />
		</c:when>
		<c:when test="${not empty professorLogado}">
		<c:import url="menu/menuP.jsp" />
		
		</c:when>
		<c:otherwise>

			<c:import url="menu/menu.jsp" />

		</c:otherwise>
	</c:choose>
	<!-- BUSCAR-->        
            <section style="margin-bottom: 10px;" >
            <div class="container">
              <div class="row">
                <div class="col-lg-12">
                  <h2 class="text-center">Listar professor perfeito</h2>          
                  <div class="cta-2-form text-center">
                    <form action="#" method="post" id="workshop-newsletter-form">
                      <input name="" placeholder="" type="email">
                      <input class="cta-2-form-submit-btn" value="Buscar" type="submit">
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </section>
    <section id="organisations" class="section-padding acessibilidade">    
        <div class="container">
             <div class="user-dashboard">                    
                    <div class="row">
                        <div class="col-md-3 col-sm-7 col-xs-12 gutter">
                            <div class="sales s1">
                               <div class="col-md-12"> 
                                <h2 style="margin-bottom: 10px;">Nível</h2>
                                </div>
                                <div class="col-md-12">                                    
                                    <form action="">
                                      <div class="form-group form-check">
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox" checked>Todos
                                            </label>
                                        </div>
                                        <h4 style="margin-bottom: 10px;">Escolar</h4>
                                         <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Fundamental
                                            </label>
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Ensino Médio
                                            </label>
                                        <label class="form-check-label" style="margin: 2px;" >
                                              <input class="form-check-input" type="checkbox">3º ano /ENEM
                                            </label>
                                        
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Ensino Superior
                                            </label>
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">técnico
                                            </label><br>
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Mestrado
                                            </label><br>
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Doutorado
                                            </label><br>
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">MBA
                                            </label>                                      
                                    </form>                                     
                                </div>                                                                 
                            </div> 
                            <div class="sales s1">
                               <div class="col-md-12"> 
                                <h2 style="margin-bottom: 10px;">Preços</h2>
                                </div>
                                <div class="col-md-12">                                    
                                    <form action="">
                                      <div class="form-group form-check">
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox" checked>Todos
                                            </label>
                                        </div>                                        
                                         <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Maior Preços
                                            </label>
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Menor Preços
                                            </label>                                                  
                                    </form>                                     
                                </div>                                                                 
                            </div>
                            <div class="sales s1">
                               <div class="col-md-12"> 
                                <h2 style="margin-bottom: 10px;">Avaliação</h2>
                                </div>
                                <div class="col-md-12">                                    
                                    <form action="">
                                      <div class="form-group form-check">
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox" checked>Todos
                                            </label>
                                        </div>                                        
                                         <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Mais Avaliado
                                            </label>                                                
                                    </form>                                     
                                </div>                                                                 
                            </div>
                            <div class="sales s1">
                               <div class="col-md-12"> 
                                <h2 style="margin-bottom: 10px;">Localização</h2>
                                </div>
                                <div class="col-md-12">                                    
                                    <form action="">
                                      <div class="form-group form-check">
                                        <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox" checked>Todos
                                            </label>
                                        </div>                                        
                                         <label class="form-check-label">
                                              <input class="form-check-input" type="checkbox">Mais Proximo
                                            </label>                                                
                                    </form>                                     
                                </div>                                                                 
                            </div>
                        </div>
                        <div class="col-md-9 col-sm-7 col-xs-12 gutter">                          
                            
                                <div class="sales">
                                <div class="col-md-4" >    
                                    <div class="circle3">
                                        <a href="descProfessor.html"><img src="img/mentor.jpg"></a>                                    
                                    </div>
                                </div> 
                                <div class="col-md-7">    
                                <div class="divider">
                                    <a href="descProfessor.html"><h1 style="text-align: center; margin:-20px;">Fernando silva</h1></a>
                                    <h4 style="text-align: center;">Recife - PE</h4>
                                    <h5 style="text-align: center;">Programação Web para Designers - php, js, css e html. </h5>
                                </div>
                                <div id="btn5">
                                <h1 style="text-align: center; margin-left: 120px;">R$50 /h</h1>    
                               <button class="btn btn-success" type="button">
                                        Solicitar Aula
                                </button>
                                </div>        
                            </div>        
                            </div>
                            <div class="sales">
                                <div class="col-md-4" >    
                                    <div class="circle3">
                                        <a href="descProfessor.html"><img src="img/mentor.jpg"></a>                                    
                                    </div>
                                </div> 
                                <div class="col-md-7">    
                                <div class="divider">
                                    <a href="descProfessor.html"s><h1 style="text-align: center; margin:-20px;">Fernando silva</h1></a>
                                    <h4 style="text-align: center;">Recife - PE</h4>
                                    <h5 style="text-align: center;">Programação Web para Designers - php, js, css e html. </h5>
                                </div>
                                <div id="btn5">
                                <h1 style="text-align: center; margin-left: 120px;">R$50 /h</h1>    
                               <button class="btn btn-success" type="button">
                                        Solicitar Aula
                                </button>
                                </div>        
                            </div>        
                            </div>
                                                    
                        </div>                        
                    </div>
                </div>
        </div>

  </section>
  <!-- Menu -->
	<c:import url="rodape.jsp" />

	<!-- Modal -->

	<!-- Modal Login-->
	<c:import url="login.jsp" />
	<!-- Modal Cadastro-->
	<c:import url="cadastro.jsp" />
</body>
</html>