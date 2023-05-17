

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!-- JSP standard tag library: It represents set of tags. Tags such as Core tags, Function tag, Formatting tags,etc.
Download the jstl.jar file and add to library. -->
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%@ include file="header.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<title>My JSP Program</title>
</head>
<body>
<!-- Using page directive -->
	<%@ page import="java.util.Date" %>    
	Today is: <%= new Date() %>
	<!-- Using include directive -->
	<%@ include file="footer.jsp" %>
	<!-- Using Taglib directive -->
	<%-- <c:set var="name" value="Mira"></c:set> <!-- set and out comes under Core Tags. -->
	<c:out value="${name}"></c:out>  --%>
</body>
</html>

