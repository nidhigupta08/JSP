<%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>

<title>Display multiplication</title>

</head>
<body bgcolor="pink">

<% 
int x=Integer.parseInt(request.getParameter("t1"));
int y=Integer.parseInt(request.getParameter("t2"));
int z=x*y;
out.println("Multiplication ="+z);
%>
</body>
</html>