<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>DELETE Operation</title>
   </head>
   
   <body>
      <sql:setDataSource var = "storing" driver = "com.mysql.cj.jdbc.Driver"
         url = "jdbc:mysql://localhost:3306/advjava"
         user = "root" password = "system"/>
 
      <c:set var = "eno" value = "1"/>
 
      <sql:update dataSource = "${storing}" var = "count">
         DELETE FROM empl WHERE eno = ?
         <sql:param value = "${eno}" />
      </sql:update>
 
      <sql:query dataSource = "${storing}" var = "result">
         SELECT * from empl;
      </sql:query>
 
      <table border = "2" width = "50%">
         <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Salary</th>
            
         </tr>
            
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.eno}"/></td>
               <td><c:out value = "${row.ename}"/></td>
               <td><c:out value = "${row.esal}"/></td>
               
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>