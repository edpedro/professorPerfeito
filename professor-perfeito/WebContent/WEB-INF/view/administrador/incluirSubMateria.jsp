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
	<c:import url="menu.jsp" />

	<form action="saveSubMateria" method="post">

		<div class="container">
			<div style="text-align: center; color: Green;">${msg}</div>
			<h3>Adicionar Sub Materia</h3>
			<div class="col-md-6">
				<div class="form-group">
					<div class="form-group">
						<label for="materia">Materia</label> <br /> <select
							id="materia" name="materia">
							<option value="">Selecione</option>
							<c:forEach items="${listaMateria}" var="obj">
								<option value="${obj.idmateria}">${obj.materia}</option>
							</c:forEach>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label">Sub Materia</label> <input
						maxlength="200" type="text" required="required"
						class="form-control" name="subMateria" />
				</div>
				<button class="btn btn-success nextBtn btn-lg pull-right"
					type="submit">Cadastrar</button>
			</div>
		</div>
	</form>

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