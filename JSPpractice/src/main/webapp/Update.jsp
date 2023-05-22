<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<html>
   <head>
      <title>UPDATE Operation</title>
   </head>
   <body>
   
   <sql:setDataSource var = "storing" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/advjava"
         user = "root" password = "system"/>
      
      <sql:update dataSource = "${storing}" var = "count">
         Update emp SET salary = 30000 where eno = 1;
      </sql:update>
      
      <sql:query dataSource = "${storing}" var = "result">
         SELECT * from emp;
      </sql:query>
      <table border = "1" width = "50%">
         <tr>
            <th>Emp ID</th>
            <th>EMP Name</th>
            <th>Salary</th>
           
         </tr>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td> <c:out value = "${row.eno}"/></td>
               <td> <c:out value = "${row.ename}"/></td>
               <td> <c:out value = "${row.salary}"/></td>
              
            </tr>
         </c:forEach>
      </table>
   </body>
</html>