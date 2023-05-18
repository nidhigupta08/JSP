<!DOCTYPE html>
<html>
<head>
<title>Addition</title>
</head>
<body>
<!--  declarations tag  -->
<%! int x,y,z; %> 

<!-- scriptlets tag
 --><%   x=30;
	 y=20;
	 z=x+y;
%>
<!--  expressions tag -->
<%= "x="+x %><br>
<%= "y="+y %><br>
<%= "z="+z %>
</body>
</html>