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
<input type="date" id="fechapublicacion" name="fechapublicacion" value="${libro.fechapublicacion)"> 
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

<select id="idCategoria" name="idCategoria">
   <option value="1"> 1 </option>
    <option value="2"> 2</option>
     <option value="3"> 3</option>

</select>

Autor
<select id="idAutor" name="idAutor">
   <option value="1"> 5 </option>
    <option value="2"> 6</option>
     <option value="3"> 7</option>

</select>



</body>
</html>