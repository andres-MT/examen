<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-teble.min.css" />
</head>
<body>

	<h1>Libros</h1>
	
	<div class= "container" style="text-align: center;">
	<button onclick="window.location.href='/ismac-libreria/libros/findOne?opcion=1'; return false;"> Agregar
</button>
Agregar
</div>
	
	
	
	
	
	
	
	<table>
			<thead>
				<tr> 
			  
			
					<th>idLibro </th>
					<th>titulo </th>
					<th>editorial </th>
					<th>numPaginas </th>
					<th>idioma </th>
					<th>fechaPublicacion </th>
					<th>descripcion </th>
					<th>tipoPasta </th>
					<th>ISBN </th>
					<th>numEjemplares </th>
					<th>portada </th>
					<th>presentacion </th>
					<th>precio </th>
					<th>categoria </th>
					<th>autor </th>
					<th>Acciones </th>
					
				</tr>
			</thead>
			<tbody>
			<c:forEach var="item" items="${libros}"> 
				<tr>
						<td> ${item.idLibro}</td>
						<td> ${item.titulo}</td>
						<td> ${item.editorial}</td>
						<td> ${item.numPaginas}</td>
						<td> ${item.idioma}</td>
						<td> ${fn:substring(item.fechaPublicacion,0,10)}</td>
						<td> ${item.descripcion}</td>
						<td> ${item.tipoPasta}</td>
						<td> ${item.ISBN}</td>
						<td> ${item.numEjemplares}</td>
						<td> 
							<img alt="Portada de libro" width="100" height="200" src="${pageContext.request.contextPath}/resources/img/${item.portada}" />
						////</td>
						////<td> ${item.presentacion}</td>
						////<td> ${item.precio}</td>
						<td> ${item.categoria.categoria}</td>
						<td> ${item.autor.nombre} ${item.autor.apellido}</td>
						<td> 
							
							
<button onclick="window.location.href='/ismac-libreria/libros/findOne?idlibro=${item.idlibro}&opcion=1';">
    Actualizar
</button>
	
	
<button onclick="if(confirm('¿Estás seguro de que deseas eliminar este libro?')) { window.location.href='/ismac-libreria/libros/findOne?idlibro=${item.idlibro}&opcion=2'; }"> 
    Eliminar
</button>
	
					
							
							
							
						
						</td>
				</tr>
			</c:forEach>
			</tbody>
	</table>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.is"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.7.1.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/bootstrap-table-es-MX.min.js"></script>
	
	<script>
	
	( ( ) => {
	'use stricy'
	const froms = document.querySelectorAll('.needs-validation')
	Array.from(forms).forEach(from =>{
		form.addEventListener('submit', evnet =>{
			if(!form.checkValidity()) {
				event.preveDefault()
				event.stopPropagation()
			}
	from.classList.add('was-validated')
		},false)
	})
	})()
			
</script>		
</body>
</html>