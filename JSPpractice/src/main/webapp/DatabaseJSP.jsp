<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<html>
   <head>
      <title>SELECT Operation</title>
   </head>
   <body>
   		<sql:setDataSource var = "storing" driver = "com.mysql.cj.jdbc.Driver"
        	 url = "jdbc:mysql://localhost:3306/advjava"
         	 user = "root"  password = "system"/>
        <sql:query dataSource = "${storing}" var = "result">
         SELECT * from employee;
      </sql:query>
 
      <table border = "2" width = "50%">
         <tr>
            <th>Emp ID</th>
            <th>Name</th>
            <th>Mobile no.</th>
         </tr>
         
        <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.id}"/></td>
               <td><c:out value = "${row.empname}"/></td>
               <td><c:out value = "${row.emp_phone}"/></td>
          </tr>
         </c:forEach>

      </table>
   </body>
</html>