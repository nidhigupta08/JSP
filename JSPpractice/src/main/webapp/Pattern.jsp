<!--  program to display the pattern
*
**
***
****
***** -->
<!DOCTYPE html>
<html>
<head>
<title>Display Pattern</title>
</head>
<body>
<!-- Using declaration tag -->
<%! int i, j, n; %>
<!-- using Scriptlets tag -->
<%
n=5;
for(i=1;i<=n;i++)
{
	for(j=1;j<=i;j++)
	{
		%>
		<!-- Using expression tag -->
		<%= "*" %>
	<% } %><br>
<%} %>
</body>
</html>