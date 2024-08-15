<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="add" method="post">

<input type="hidden" id="idlibro" name="idlibro" value="${libro.idlibro}"> 
<br/>
titulo
<input type="text" id="titulo" name="titulo" value="${libro.titulo)"> 
<br/>
editorial

<input type="text" id="editorial" name="editorial" value="${libro.editorial)"> 
<br/>
numero de paginas
<input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas)"> 
<br/>
edicion
<input type="text" id="edicion" name="edicion" value="${libro.edicion)"> 
<br/>
Idioma
<input type="text" id="idioma" name="idioma" value="${libro.idioma)"> 
<br/>
Fecha de publicacion
<input type="date" id="fechapublicacion" name="fechapublicacion" value="${fn:substring{libro.fechapublicacion,0,10)}"> 
<br/>
Tipo pasta
<input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta)"> 
<br/>
ISBN
<input type="text" id="ISBN" name="ISBN" value="${libro.ISBN)"> 
<br/>
Numero Ejemplares
<input type="number" id="numeroEjemplares" name="numeroEjemplare" value="${libro.numeroEjemplare)"> 
<br/>
Portada
<input type="text" id="presentacion" name="presentacion" value="${libro.presentacion)"> 
<br/>
Presentacion
<input type="text" id="titulo" name="titulo" value="${libro.titulo)"> 
<br/>
precio
<input type="number"  id="precio" name="precion" value="${libro.precio)"> 
<br/>

Categoria
<select="idCategoria" name="idCategoria">
<c:forEach var="item" items="${categoria }">
<option value ="${item.idCategoria}" ${item.idCategoria ==libro.categoria.idCtegoria'selected': '' }> ${item. categoria } </option>
</c:forEach>
</select>

Autor
<select="idAutores" name="idAutores">
<c:forEach var="item" items="${autor }">
<option value ="${item.idAutor}"> ${item.nombre} ${item.apellido}</option>
</c:forEach>
</select>
<button type="submit" onclick="">Guardar </buttom>
<button type="submit" onclick="window.location.href='/ismac-libreria1/libros/findAll´; return false;">cancelar </buttom>
</button>

<select id="idCategoria" name="idCategoria">
   <option value="1"> 1 </option>
    <option value="2"> 2</option>
     <option value="3"> 3</option>

</select>



</body>
</html>